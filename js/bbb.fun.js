var bbb = require('bbb');

function args_to_key(args) {
	return args.map(function(a) { return a.constructor.name; });
}

function default_fun() {
	var args = bbb.arg2array(arguments);
	console.error("overload failed", args_to_key(args));
};

function fun(org) {
	org = org || default_fun;
	var others = bbb.arg2array(arguments, 1);

	var overload_functions = {};
	if(others.length) {
		overload_functions[args_to_key(others)] = org;
		org = default_fun;
	}
	var f = function() {
		var args = bbb.arg2array(arguments);
		return (overload_functions[args_to_key(args)] || org).apply(this, arguments);
	}
	f.overload = function(overloading_function) {
		var args = bbb.arg2array(arguments, 1);
		overload_functions[args_to_key(args)] = overloading_function;
		return f;
	};
	return f;
}

bbb.modulalize({
	fun: fun
}, this);
