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
