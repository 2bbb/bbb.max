inlets = 2;
var appending_str = jsarguments[1] || "";

setinletassist(-1, function(n) {
	switch(n) {
		case 0: assist("osc message list"); break;
		case 1: assist("string will be appended"); break;
		default: break;
	}
});

setoutletassist(-1, function(n) {
	switch(n) {
		case 0: assist("osc message list what address is appended"); break;
		default: break;
	}
});


function anything() {
	if(inlet == 1) {
		appending_str = messagename;
		return;
	}
	if(messagename[0] == '/') {
		var arr = arrayfromargs(messagename + appending_str, arguments);
		outlet(0, arr);
	}
}