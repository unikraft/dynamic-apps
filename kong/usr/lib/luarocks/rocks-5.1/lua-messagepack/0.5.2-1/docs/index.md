
# lua-MessagePack

---

## Overview

[MessagePack](http://msgpack.org/)
is an efficient binary serialization format.

It lets you exchange data among multiple languages
like JSON but it's faster and smaller.

It's a pure Lua implementation, without dependency.

It's really fast with LuaJIT.

## References

The MessagePack specification is available at
[github.com/msgpack/msgpack](https://github.com/msgpack/msgpack).

## Status

lua-MessagePack is in production/stable stage.

It's developed for Lua 5.1, 5.2 & 5.3. There are 2 variants:

- one compatible with all interpreters since Lua 5.1
- another which uses the Lua 5.3 features


## Download

The sources are hosted on [Framagit](https://framagit.org/fperrad/lua-MessagePack).

## Installation

lua-MessagePack is available via LuaRocks:

```sh
luarocks install lua-messagepack
# luarocks install lua-messagepack-lua53
```

lua-MessagePack is available via opm:

```sh
opm get fperrad/lua-messagepack
```

or manually, with:

```sh
make install LUAVER=5.2
```

## Test

The test suite requires the module
[lua-TestMore](https://fperrad.frama.io/lua-TestMore/).

```sh
make test
```

## Copyright and License

Copyright &copy; 2012-2019 Fran&ccedil;ois Perrad

This library is licensed under the terms of the MIT/X11 license,
like Lua itself.
