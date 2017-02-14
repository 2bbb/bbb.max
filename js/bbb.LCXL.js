var bbb = require('bbb');
var Constants = require('bbb.LCXL.constants');

outlets = 2;

// constant and sysex msg template

var MIDI_SYSEX = 0xF0, MIDI_SYSEX_END = 0xF7;
var led_sysex = [MIDI_SYSEX, 0, 32, 41, 2, 17, 120, 0, 0, 0, MIDI_SYSEX_END];
var toggle_sysex = [MIDI_SYSEX, 0, 32, 41, 2, 17, 123, 0, 0, 0, MIDI_SYSEX_END];
var template_sysex = [MIDI_SYSEX, 0, 32, 41, 2, 17, 119, 0, MIDI_SYSEX_END];

var ctl_map = {};
var reverse_ctl_map = {};
var note_map = {};
var reverse_note_map = {};
var led_map = {
	"knob1": [0, 1, 2, 3, 4, 5, 6, 7],
	"knob2": [8, 9, 10, 11, 12, 13, 14, 15],
	"knob3": [16, 17, 18, 19, 20, 21, 22, 23],
	"button1": [24, 25, 26, 27, 28, 29, 30, 31],
	"button2": [32, 33, 34, 35, 36, 37, 38, 39],
	"cursor": [44, 45, 46, 47],
	"other": [40, 41, 42, 43]
};

// context
var template_index = 0;
var bytes = [];

function create_led_value(red, green) {
	return ((Math.min(green ^ 0, 3) << 4) | Math.min(red ^ 0, 3) | 12);
}

function set_led(ch, note, value, type, index, color) {
	if(led_map[type] == undefined || led_map[type][index] == undefined) return;
	
	led_sysex[7] = template_index;
	led_sysex[8] = led_map[type][index];
	led_sysex[9] = color;
	outlet(1, led_sysex);
}

function set_template(template_id) {
	template_index = template_id || 0;
	postln("bbb.LCXL: set template to " + (template_index + 1));
	template_sysex[7] = template_index;
	outlet(1, template_sysex);
}

function set_toggle(template_id, type, index, enable) {
	switch(type) {
		case Constants.Module.Button1:
			toggle_sysex[8] = 0 + index;
			break;
		case Constants.Module.Button2:
			toggle_sysex[8] = 8 + index;
			break;
		case Constants.Module.Other:
			toggle_sysex[8] = 16 + index;
			break;
		case Constants.Module.Cursor:
			toggle_sysex[8] = 20 + index;
			break;
		default:
			return;
	}
	toggle_sysex[7] = template_id;
	toggle_sysex[9] = enable ? 127 : 0;
	postln("bbb.LCXL: set toggle (" + template_id, type, index, enable, ")");
	outlet(1, toggle_sysex);
}

function sysex(v) {
	if(v == MIDI_SYSEX) bytes = [];
	bytes.push(v);
	if(v != MIDI_SYSEX_END) return;
	
    if(bytes.length == 9) {
        if(bytes[1] == 0
           && bytes[2] == 32
           && bytes[3] == 41
           && bytes[4] == 2
           && bytes[5] == 17
           && bytes[6] == 119
        ) {
            template_index = bytes[7];
			post("bbb.LCXL: set template to " + (template_index + 1), "\n");
			outlet(0, "template_index", template_index);
        }
    }
}

function ctlin(value, ctl_no, ch) {
	var ctl = ctl_map[template_index][ctl_no];
	if(ctl === undefined) return;
	outlet(0, ctl[0], ctl[1], value, ch);
	var	mapped = value ? ((value - 1) / 63 + 2) : 1,
		fullRange = value ? (value / 43 + 1) : 0;
	var c = 0;
	switch(mapped ^ 0) {
		case 1: c = create_led_value(0, 0); break;
		case 2: c = create_led_value(0, 3); break;
		case 3: c = create_led_value(2, 1); break;
		case 4: c = create_led_value(3, 0); break;
	}
	if(ch[0] == Constants.Module.Cursor) set_led(ch, ctl_no, value, ctl[0], ctl[1], create_led_value(value ? 3 : 0, 0));
	else set_led(ch, ctl_no, value, ctl[0], ctl[1], c);
}

function notein(note_no, velocity, ch) {
	var note = note_map[template_index][note_no];
	if(note === undefined) return;
	outlet(0, note[0], note[1], velocity, ch);
	var	mapped = velocity ? ((velocity - 1) / 63 + 2) : 1,
		fullRange = velocity ? (velocity / 43 + 1) : 0;
	if(note[0] != Constants.Module.Other) set_led(ch, note_no, velocity, note[0], note[1], create_led_value(velocity ? 3 : 0, velocity ? 0 : 1));
	else set_led(ch, note_no, velocity, note[0], note[1], create_led_value(0, velocity ? 4 : 0));
}

function parse(key, setting) {
	var i, j, k, mod_setting, mod_name;
	var value, type, continuous, length;
	var map, reverse;
	ctl_map[key] = {};
	note_map[key] = {};
	reverse_note_map[key] = {};
	reverse_ctl_map[key] = {};
	for(var module_key in Constants.Module) {
		mod_name = Constants.Module[module_key];
		mod_setting = setting[mod_name];
		length = 0;
		for(j = 0; j < mod_setting.length; j++) {
			value = mod_setting[j].value;
			type = mod_setting[j].type;
			continuous = mod_setting[j].continuous || 1;
			
			map = (type == Constants.Type.Note ? note_map : ctl_map)[key];
			reverse = (type == Constants.Type.Note ? reverse_note_map : reverse_ctl_map)[key];
			if(!reverse[mod_name]) reverse[mod_name] = {};

			if(continuous) {
				for(k = 0; k < continuous; k++) {
					led_map[value + k] = (mod_name != Constants.Module.Fader);
					reverse[mod_name][length] = value + k;
					map[value + k] = [mod_name, length];
					length++;
				}
			}
		}
	}
}

var global_setting;

function preset(preset) {
	if(preset == "bang") preset = null;
	preset = preset || 'bbb.LCXL.default.js';
	postln("bbb.LCXL: load setting from ", preset);
	global_setting = require(preset);
	for(var key in global_setting) {
		parse(key, global_setting[key]);
	}
}