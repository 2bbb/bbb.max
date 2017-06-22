# bbb-max

## Install

* clone into `/path/to/Max 7/Library`

## js

### bbb.js (add to global scope)

* function postln(arguments ...)
* function errorln(arguments ...)

post/error "\n" at end of arguments

* function postJson(obj, replacer, pretty)
* function errorJson(obj, replacer, pretty)

i.e. `post/error(JSON.stringify(obj, replacer, pretty))`

* console
    * log(arguments ...)
    * info(arguments ...)
    * warn(arguments ...)
    * error(arguments ...)

### bbb.js (when include or require)

* function parsearguments()

parse `jsarguments`.

if `[js hoge.js fuga @attr1 2 piyo @attr2]` then `parsearguments` returns

```
{
    name: 'hoge.js',
    normal: ['fuga', 'piyo'],
    attribute: {
        attr1: 2,
        attr2: undefined
    }
}
```

* function arg2array(arguments, from)

similar to `arrayfromargs`.

`from` is offset of slice.

* function extend(dst, src)

extend object.

* function setTimeout(callback, delay, args ...)
* function setInterval(callback, delay, args ...)
* function clearTimeout(timer)
* function clearInterval(timer)

thin wrapper of `Task` to use like normal javascript.

### osc.prepend.js
### osc.append.js

prepend/append component to address of osc message.

input `(/foo 1 2 3)` to `[js osc.prepend.js /bar]` then we got output `(/bar/foo 1 2 3)`.

input `(/foo 1 2 3)` to `[js osc.append.js /bar]` then we got output `(/foo/bar 1 2 3)`.

### osc.removehead.js
### osc.removetail.js

remove component from address of osc message.

input `(/foo/bar/baz 1 2 3)` to `[js osc.removehead.js 2]` then we got output `(/baz 1 2 3)`.

input `(/foo/bar/baz 1 2 3)` to `[js osc.removetail.js 2]` then we got output `(/foo 1 2 3)`.

### osc.route.js

like CNMAT OSC-Route.

## patches

### bbb.LCXL

parse and treat midi message from *Launch Control XL*.

attribute:

* @port [default: "Launch Control XL"]
* @preset [default: "bbb.LCXL.default.js"]

output format:

* ( "knob1" index value midi_ch )
* ( "knob2" index value midi_ch )
* ( "knob3" index value midi_ch )
* ( "fader" index value midi_ch )
* ( "button1" index value midi_ch )
* ( "button2" index value midi_ch )
* ( "cursor" index value midi_ch )
* ( "other" index value midi_ch )

where:
* index is
    * 0 - 3 (cursor and other)
    * 0 - 7 (otherwise)
* cursor 0, 1, 2, 3 means "Send Up", "Send Down", "Track Left", "Track Right"
* other 0, 1, 2, 3 means "Device", "Mute", "Solo", "Record Arm"

### bbb.LCXL.UI

use with `bbb.LCXL`

see bbb.LCXL.help
## Author

* ISHII 2bit [bufferRenaiss co., ltd.]
* ishii[at]buffer-renaiss.com
