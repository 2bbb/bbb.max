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
	if(messagename[0] == '/') {
		var arr = arrayfromargs(prepending_str + messagename, arguments);
		outlet(0, arr);
	}
}