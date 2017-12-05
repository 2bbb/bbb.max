inlets = 2;
var prepending_str = jsarguments[1] || "";

setinletassist(-1, function(n) {
	switch(n) {
		case 0: assist("osc message list"); break;
		case 1: assist("string will be prepended"); break;
		default: break;
	}
});

setoutletassist(-1, function(n) {
	switch(n) {
		case 0: assist("osc message list what address is prepended"); break;
		default: break;
	}
});


function anything() {
	if(inlet == 1) {
		prepending_str = messagename;
		return;
	}
	if(messagename == "msg_int") {
		var arr = arrayfromargs(arguments);
		arr[0] = (prepending_str + "/" + arr[0]).replace(/\/\//gi, "/");
		outlet(0, arr);
		return;
	}
	if(messagename == "list") {
		var arr = arrayfromargs(arguments);
		arr[0] = (prepending_str + "/" + arr[0]).replace(/\/\//gi, "/");
		outlet(0, arr);
		return;
	}
	var address = (prepending_str + messagename).replace(/\/\//gi, "/");
	if(address[0] != "/") address = "/" + address;
	var arr = arrayfromargs(address, arguments);
	outlet(0, arr);
}