
# MessagePack

---

# Reference

#### pack( data )

Serialize a `data`.

#### unpack( str )

Deserialize a `string`.

#### unpacker( src )

Accept a `string` or a [`ltn12.source`](http://w3.impa.br/~diego/software/luasocket/ltn12.html#source)
and returns a iterator.

The iterator gives a couple of values,
the _interesting_ value is the second.

#### set_number( str )

Configures the behaviour of `pack`.
The valid options are `'double'` and `'float'`.
The default is _usually_ `'double'`.

#### set_integer( str ) DEPRECATED

Configures the behaviour of `pack`.
The valid options are `'signed'` and `'unsigned'`.
The default is `'unsigned'`.

#### set_array( str )

Configures the behaviour of `pack`.
The valid options are `'without_hole'`, `'with_hole'` and `'always_as_map'`.
The default is `'without_hole'`.

#### set_string( str )

Configures the behaviour of `pack`.
The valid options are `'string'`, `'string_compat'` and `'binary'`.
The default is `'string_compat'` in order to be compatible with old implementation.

## Data Conversion

- The following __Lua__ types could be converted :
  `nil`, `boolean`, `number`, `string` and `table`.
- A __Lua__ `number` is converted into an __MessagePack__ `integer`
  if `math.floor(num) == num`, otherwise it is converted
  into the __MessagePack__ `float` or `double` (see `set_number`).
- When a __MessagePack__ 64 bits `integer` is converted to a __Lua__ `number`
  it is possible that the resulting number will not represent the original number but just an approximation.
- A __Lua__ `table` is converted into a __MessagePack__ `array`
  only if _all_ the keys are composed of strictly positive integers,
  without hole or with holes (see `set_array`).
  Otherwise it is converted into __MessagePack__ `map`.
- An empty `table` is always converted into a __MessagePack__ `array`.
- With `set_array'always_as_map'`,
  all __Lua__ `table` are converted into a __MessagePack__ `map`.
- Lua does not allow `nil` and `NaN (0/0)` as `table` index, by default,
  the deserialization of this kind of __MessagePack__ map skips the key/value pair.
  The value could preserved by defining the module member `sentinel` which is used as key.
- LIMITATION : __MessagePack__ cannot handle data with _cyclic_ reference.

## Extensions

There are introduced with __MessagePack__ specification v5.

During deserialization, unknown extensions are skipped
and evaluated as a __Lua__ `nil`.

The following example shows how to create a new module
which extends `MessagePack` with the serialization/deserialization
of __Lua__ `function` (obviously,
the emitter and receiver MUST use the same version of Lua).

```lua
local loadstring = loadstring or load
local mp = require 'MessagePack'
local EXT_FUNCTION = 7

mp.packers['function'] = function (buffer, fct)
    mp.packers['ext'](buffer, EXT_FUNCTION, assert(string.dump(fct)))
end

mp.build_ext = function (tag, data)
    if tag == EXT_FUNCTION then
        return assert(loadstring(data))
    end
end

return mp
```

## Advanced usages

The following Lua hack allows to have several instances
of the module `MessagePack`, each one with its own settings.

```lua
local mp1 = require 'MessagePack'
package.loaded['MessagePack'] = nil     -- the hack is here
local mp2 = require 'MessagePack'

mp1.set_array'without_hole'
mp2.set_array'always_as_map'
```

When global settings are not enough,
the following recipe allows to use a specific encoding
for only a part of a data structure.

```lua
local mp = require 'MessagePack'
mp.packers['function'] = function (buffer, fct)
    fct(buffer)
end

local function BINARY (str)
    return function (buffer)
        mp.packers['binary'](buffer, str)
    end
end

local function FLOAT (n)
    return function (buffer)
        mp.packers['float'](buffer, n)
    end
end

mp.pack { 'encoded_with_global_settings', BINARY'encoded_as_binary', 42, FLOAT(42) }
```

# Examples

Basic usage

```lua
local mp = require 'MessagePack'

mp.set_number'float'
mp.set_array'with_hole'
mp.set_string'string'

mpac = mp.pack(data)
data = mp.unpack(mpac)

local ltn12 = require 'ltn12'
src = ltn12.source.file(io.open('file', 'r'))
for _, v in mp.unpacker(src) do
    print(v)
end
```
