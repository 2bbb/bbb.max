function init() {
	var args = arrayfromargs(arguments);
	var num = args.length;
	var new_obj_params = [5, 90, "js", "bbb.osc.route.js"].concat(args);
	
	var js_obj = patcher.newdefault.apply(patcher, new_obj_params);
	var main_inlet = patcher.getnamed('main_inlet');
	patcher.connect(main_inlet, 0, js_obj, 0);
	
	for(var n = 0; n < num; n++) {
		var i = patcher.getnamed("inlet_" + n);
		patcher.connect(i, 0, js_obj, n + 1);
		
		var o = patcher.getnamed("outlet_" + n);
		patcher.connect(js_obj, n, o, 0);
	}
	
	var thru_outlet = patcher.getnamed("outlet_" + num);
	patcher.connect(js_obj, num, thru_outlet, 0);
	
	for(var n = num; n < 64; n++) {
		var i = patcher.getnamed("inlet_" + n);
		patcher.remove(i);
		var o = patcher.getnamed("outlet_" + (n + 1));
		patcher.remove(o);
	}
}