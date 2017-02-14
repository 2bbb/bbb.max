outlets = 2;

include('bbb');

function bang() {
	setTimeout(function() {
		outlet(0, "bang");
	}, 1000);
}


// scoped include
var bbb = {};

include('bbb', bbb);

function msg_int(x) {
	bbb.setTimeout(function() {
		outlet(1, x);
	}, 1000);
}