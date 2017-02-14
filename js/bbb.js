function arg2array(arguments, from) {
	return Array.prototype.slice.call(arguments, from || 0); 
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
};

function clearInterval(task) {
	if(task instanceof Task && task.running) task.cancel();
};

function postln() {
	post(arg2array(arguments), "\n");
}

function postJson(obj) {
	postln(JSON.stringify(obj, null, "  "));
}

function extend(dst, src) {
	for(var key in src) {
		if(src.hasOwnProperty(key)) dst[key] = src[key];
	}
}

function modulalize(obj) {
	try {
		if(exports) {
			extend(exports, obj);
		}
	} catch(err) {
		if(err.message != "exports is not defined") {
			postln(JSON.stringify(err));
		}
	}
}

modulalize({
	arg2array: arg2array,
	setTimeout: setTimeout,
	clearTimeout: clearTimeout,
	setInterval: setInterval,
	clearInterval: clearInterval,
	postln: postln,
	postJson: postJson,
	extend: extend,
	modulalize: modulalize
});
