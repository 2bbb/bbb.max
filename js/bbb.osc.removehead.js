inlets = 2;
var remove_rank = (0 ^ jsarguments[1]) || 1;

setinletassist(-1, function(n) {
	switch(n) {
		case 0: assist("osc message list"); break;
		case 1: assist("int number of components will remove"); break;
		default: break;
	}
});

setoutletassist(-1, function(n) {
	switch(n) {
		case 0: assist("osc message list what address is processed"); break;
		default: break;
	}
});


function anything() {
	if(inlet == 1) {
		remove_rank = 0 ^ arguments[0];
		return;
	}
	if(messagename[0] == '/') {
		var messagenames = messagename.split("/").slice(1 + remove_rank);
		var arr = arrayfromargs("/" + messagenames.join("/"), arguments);
		outlet(0, arr);
	}
}