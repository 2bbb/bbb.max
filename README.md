# bbb-max

## Install

* clone into `/path/to/Max 7/Library`

## js

### osc.prepend
### osc.append

prepend/append component to address of osc message.

input `(/foo 1 2 3)` to `[js osc.prepend.js /bar]` then we got output `(/bar/foo 1 2 3)`.

input `(/foo 1 2 3)` to `[js osc.append.js /bar]` then we got output `(/foo/bar 1 2 3)`.

### osc.removehead
### osc.removetail

remove component from address of osc message.

input `(/foo/bar/baz 1 2 3)` to `[js osc.removehead.js 2]` then we got output `(/baz 1 2 3)`.

input `(/foo/bar/baz 1 2 3)` to `[js osc.removetail.js 2]` then we got output `(/foo 1 2 3)`.

### osc.route

like CNMAT OSC-Route.

## Author

* ISHII 2bit [bufferRenaiss co., ltd.]
* ishii[at]buffer-renaiss.com
