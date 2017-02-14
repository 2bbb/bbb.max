inlets = jsarguments.length;
outlets = jsarguments.length;
var remove_rank = (0 ^ jsarguments[1]) || 1;
var regexes = [];
for(var i = 1; i < jsarguments.length; ++i) {
	regexes.push(new RegExp("^" + jsarguments[i]));
}

setinletassist(-1, function(n) {
	if(n == 0) {
		assist("osc message list");
		return;
	}
	assist("replace pattern " + jsarguments[n]);
});

setoutletassist(-1, function(n) {
	if(n == regexes.length) {
		assist("message address isn't matched to patterns.");
		return;
	}
	assist("message address matched to " + jsarguments[n + 1] + ".");
});

function anything() {
	if(inlet == 0) {
		if(messagename[0] == '/') {
			for(var i = 0; i < regexes.length; i++) {
				if(regexes[i].test(messagename)) {
					var address = messagename.replace(regexes[i], "");
					var arr = address ? arrayfromargs(address, arguments) : arrayfromargs(arguments);
					outlet(i, arr);
					return;
				}
			}
			var arr = arrayfromargs(messagename, arguments);
			outlet(regexes.length, arr);
		}
		return;
	}
	regexes[inlet - 1] = new RegExp("^" + messagename);
	const pattern = messagename;
	setinletassist(inlet, function(n) {
		assist("replace pattern  " + pattern + ".");
	});
	setoutletassist(inlet - 1, function(n) {
		assist("message address matched to " + pattern + ".");
	});
}