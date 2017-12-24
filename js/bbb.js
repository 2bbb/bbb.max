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

bbb_tasks = [];
bbb_timer = null;

function setIntervalTask(callback, interval) {
	var args = arg2array(arguments, 2);
	var task = new Task(callback, this, args);
	task.interval = interval;
	task.repeat(-1, interval);
	return task;
};

function clearIntervalTask(task) {
	if(task instanceof Task && task.running) task.cancel();
};

function Timer(callback, ms, is_loop) {
	this.time = new Date().getTime();
	this.callback = callback;
	this.ms = ms;
	this.is_loop = is_loop;
};

function startGlobalQueue() {
	function a_task() {
		var new_tasks = [];
		var time = new Date().getTime();
		for(var i = 0, length = bbb_tasks.length; i < length; ++i) {
			var t = bbb_tasks[i];
			if(t.time + t.ms < time) {
				t.callback();
				if(t.is_loop) {
					t.time = time;
				} else {
					continue;
				}
			}
			new_tasks.push(t);
		}
		bbb_tasks = new_tasks;
		if(!bbb_tasks.length) {
			clearIntervalTask(bbb_timer);
			timer = null;
		}
	};
	bbb_timer = setIntervalTask(a_task, 4);
};

function push_task(callback, ms, is_loop) {
	var t = new Timer(callback, ms, is_loop);
	bbb_tasks.push(t);
	if(!bbb_timer) startGlobalQueue();
	return t;
}

var setTimeout = function(callback, ms) {
		return push_task(callback, ms, false);
	},
	clearTimeout = function(timer) {
		bbb_tasks = bbb_tasks.filter(function(t) { return t != timer; });
	},
	setInterval = function(callback, ms) {
		return push_task(callback, ms, true);
	},
	clearInterval = function(timer) {
		bbb_tasks = bbb_tasks.filter(function(t) { return t != timer; });
	},
	clear = function() {
		if(bbb_timer) {
			clearIntervalTask(bbb_timer);
			bbb_timer = null;
		}
	};

function closebang() {
	clear();
}

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
