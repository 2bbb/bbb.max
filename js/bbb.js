// add to global

postln = function() {
	arg2array(arguments).forEach(function(o) {
		post((o instanceof Object || o instanceof Array) ? JSON.stringify(o) : o);
	});
	post("\n");
}

postJson = function(obj, replacer, pretty) {
	post(JSON.stringify(obj, replacer, pretty), "\n");
}

errorln = function() {
	arg2array(arguments).forEach(function(o) {
		error((o instanceof Object || o instanceof Array) ? JSON.stringify(o) : o);
	});
	error("\n");
}

errorJson = function(obj, replacer, pretty) {
	error(JSON.stringify(obj, replacer, pretty), "\n");
}

try {
	if(console) {}
} catch(err) {
	console = {
		log: function() {
			postln.apply(this, arguments);
		},
		info: function() {
			post("[INFO ]");
			postln.apply(this, arguments);
		},
		warn: function() {
			error("[WARN ]");
			errorln.apply(this, arguments);
		},
		error: function() {
			error("[ERROR]");
			errorln.apply(this, arguments);
		}
	};
}

// about jsarguments & arguments

function parsearguments() {
	var result = {
		name: jsarguments[0],
		normal: [],
		attribute: {}
	};
	for(var i = 1; i < jsarguments.length; i++) {
		if(jsarguments[i][0] == "@") {
			result.attribute[jsarguments[i].slice(1)] = jsarguments[i + 1];
			i++;
		} else {
			result.normal.push(jsarguments[i]);
		}
	}
	return result;
}

function arg2array(arguments, from) {
	return Array.prototype.slice.call(arguments, from || 0); 
};

// object system

function extend(dst, src) {
	for(var key in src) {
		if(src.hasOwnProperty(key)) dst[key] = src[key];
	}
}

function modulalize(obj, that) {
	that = that || this;
	try {
		if(that.exports) {
			extend(that.exports, obj);
		}
	} catch(err) {
		if(err.message != "exports is not defined") {
			postln(JSON.stringify(err));
		}
	}
}

// console

console = {
	log: postln,
	error: errorln,
};

/* timer */
function setTimeout(callback, delay) {
	var args = arg2array(arguments, 2);
	var task = new Task(callback, this, args);
	task.schedule(delay);
	return task;
};

function clearTimeout(task) {
	if(task instanceof Task && task.running) task.cancel();
};

function setInterval(callback, interval) {
	var args = arg2array(arguments, 2);
	var task = new Task(callback, this, args);
	task.interval = interval;
	task.repeat(-1, interval);
	return task;
};

function clearInterval(task) {
	if(task instanceof Task && task.running) task.cancel();
};

modulalize({
	parsearguments: parsearguments,
	arg2array: arg2array,
	extend: extend,
	modulalize: modulalize,
	setTimeout: setTimeout,
	clearTimeout: clearTimeout,
	setInterval: setInterval,
	clearInterval: clearInterval,
});
