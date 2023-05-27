[![build status](https://github.com/lunarmodules/luasyslog/workflows/test/badge.svg)](https://github.com/lunarmodules/luasyslog/actions?query=workflow%3Atest)

# luasyslog
Addon for LuaLogging to log to the system log on unix systems. Can also be used
without LuaLogging.

# Installing

Simplest is to install via LuaRocks
```
luarocks install luasyslog
```

Alternatively clone the git repo and use the `Makefile`.

# Copyright

see [COPYING](COPYING)

# History & Changelog

### releasing new versions
- update the version + copyright years in `lsyslog.c` (year twice!)
- update the version in `Makefile`
- check copyright years in `LICENSE`
- update changelog below
- update rockspecs
- commit as `release X.Y.Z`
- tag as `X.Y.Z`
- push commit and tags
- upload rock to LuaRocks

### 2.0.1 released 24-Mar-2021
- fix possible memory corruption issue [#1](https://github.com/lunarmodules/luasyslog/pull/1)

### 2.0.0 released 22-Mar-2021, revived copy
- no longer rely on globals (only on Lua 5.1 `lsyslog` sets a global)
- added standard lualogging formatting options
- `syslog` now returns a module, same as `lsyslog`
- added new docs in `README.md`
- added tests and CI

### 1.0.0 Original version by Nicolas Casalini (DarkGod)
- see https://web.archive.org/web/20101223090603/http://lua.net-core.org/sputnik.lua?p=Telesto:About

---

# Reference

This library consists of two modules, [`lsyslog`](#reference-lsyslog) and [`syslog`](#reference-syslog).

## Reference `syslog`

This is the library is a copy of `lsyslog`, so it holds the same functions and
constants, but when 'required', it will add an appender to `lualogging`. And
calling on the module table will create a new appender as well.

### Synopsys

```lua
local lualogging = require "lualogging"
local syslog = require "syslog"

local logger = lualogging.syslog {
    ident = "Lua-prog",
    facility = syslog.FACILITY_USER,
}

-- or the shorter version without explicit LuaLogging references
local syslog = require "syslog"
local logger = syslog {
    ident = "lua",
    facility = syslog.FACILITY_USER,
}


-- Below are standard LuaLogging features, check its docs for more
logger:debug("some debug message")

-- logging tables
logger:debug({ a = 1, b = 2 })

-- use string.format() style formatting
logger:info("val1='%s', val2=%d", "string value", 1234)
```

Syslog appender parameters:

- `ident`: identifying string prepended to messages by syslog service (`string`,
  default `"lua"`).
- `facility`: one of the `FACILITY_XXX` constants (`int`, default
  `syslog.FACILITY_USER`).
- additional the common parameters for LuaLogging; `logPattern`, `timestampPattern`
  (though these do not add value in the context of syslog).

---

## Reference `lsyslog`

This is the underlying binding to `syslog`, it can be used to directly interact
with `syslog`, without using `lualogging`.

### Synopsys

```lua
local lsyslog = require "lsyslog"
lsyslog.open("my-prog", lsyslog.FACILITY_USER)

lsyslog.log(lsyslog.DEBUG, "a debug message")
```

---

### `open(ident, facility)`

Opens connection to syslog.

- `ident`: identifying string prepended to messages (`string`, required).
- `facility`: one of the [`FACILITY_XXX`](#facility_xxx) constants (`int`, required).

---

### `log(level, message)`

Generates a log message.

- `level`: one of the [`LOG_XXX`](#log_xxx) constants (`int`, required).
- `message`: the message to log (`string`, required).

---

### `close()`

Closes the file descriptor being used. Usage is optional.

---

### `LOG_xxx`

Log level constants, to be used with [`log`](#loglevel-message):

    lsyslog.LOG_EMERG
    lsyslog.LOG_ALERT
    lsyslog.LOG_CRIT
    lsyslog.LOG_ERR
    lsyslog.LOG_WARNING
    lsyslog.LOG_NOTICE
    lsyslog.LOG_INFO
    lsyslog.LOG_DEBUG

---

### `FACILITY_xxx`

Facility constants, to be used with [`open`](#openident-facility):

    lsyslog.FACILITY_KERN
    lsyslog.FACILITY_USER
    lsyslog.FACILITY_MAIL
    lsyslog.FACILITY_DAEMON
    lsyslog.FACILITY_AUTH
    lsyslog.FACILITY_SYSLOG
    lsyslog.FACILITY_LPR
    lsyslog.FACILITY_NEWS
    lsyslog.FACILITY_UUCP
    lsyslog.FACILITY_CRON
    lsyslog.FACILITY_AUTHPRIV
    lsyslog.FACILITY_FTP
    lsyslog.FACILITY_LOCAL0
    lsyslog.FACILITY_LOCAL1
    lsyslog.FACILITY_LOCAL2
    lsyslog.FACILITY_LOCAL3
    lsyslog.FACILITY_LOCAL4
    lsyslog.FACILITY_LOCAL5
    lsyslog.FACILITY_LOCAL6
    lsyslog.FACILITY_LOCAL7
