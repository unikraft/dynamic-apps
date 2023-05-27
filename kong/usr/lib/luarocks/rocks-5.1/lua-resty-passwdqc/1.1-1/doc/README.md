# lua-resty-passwdqc

LuaJIT FFI bindings to [libpasswdqc](http://www.openwall.com/passwdqc/) — a password / passphrase strength checking and policy enforcement toolset.

## Synopsis

```lua
local password = require "resty.passwdqc"

-- Generate a random password with default settings
local pw, err = password.random()

if pw then
    print("success", pw)
else
    print("error", err)
end

-- Generate a random password with random=24
local pw, err = password.random(24)

if pw then
    print("success", pw)
else
    print("error", err)
end

-- Generate a random password with random=85
local pw, err = password.random(85)

if pw then
    print("success", pw)
else
    print("error", err)
end

-- Generate a random password with random=85
local pw, err = password.random(10)

if pw then
    print("success", pw)
else
    print("error", err)
end

-- You can also supply the options as a table
-- Generate a random password with random=85
local pw, err = password.random{ random = 64 }

if pw then
    print("success", pw)
else
    print("error", err)
end

-- Check if password strength is enough using default settings
local ok, err = password.check('newpassword', 'oldpassword')

if ok then
    print("success", "new password is fine")
else
    print("error", err)
end

-- Check if password strength is enough using default settings
local ok, err = password.check('new2!password', 'oldpassword')

if ok then
    print("success", "new password is fine")
else
    print("error", err)
end

-- Check if password strength is enough using default settings
local ok, err = password.check('new2!password', 'not_based_on_this')

if ok then
    print("success", "new password is fine")
else
    print("error", err)
end

-- You may also supply settings to check, the defaults are:
--
-- {
--     min        = "disabled,24,11,8,7",
--     max        = 40,
--     passphrase = 3,
--     match      = 4,
--     similar    = "deny",
--     random     = 47
-- }
--
-- Read more from here: http://www.openwall.com/passwdqc/README.shtml

local ok, err = password.check('newpass', nil, { min = "disabled,24,11,9,8", match = 3 })

if ok then
    print("success", "new password is fine")
else
    print("error", err)
end

-- You don't need to supply old pass as nil, so the above is same as:

local ok, err = password.check('newpass', { min = "disabled,24,11,9,8", match = 3 })

if ok then
    print("success", "new password is fine")
else
    print("error", err)
end

-- If you need to run more tests with same settings, you can use:

local quality = password.new{ min = "disabled,24,11,9,8", match = 3 }
local ok, err = quality:check("This!Is2Awesom3!", "IUsedToUse7his")

if ok then
    print("success", "new password is fine")
else
    print("error", err)
end
```

The above would output something similar to this:

```
success	grace-Mutter=upon
success	vague-Libya
success	Animal!Couple9scum2Track9Mark3
error	Error parsing parameter "random=10": Invalid parameter value
success	pursue_buggy2baby!Loop
error	not enough different characters or classes for this length
error	is based on the old one
success	new password is fine
error	too short
error	too short
success	new password is fine
```

## License

`lua-resty-passwdqc` uses two clause BSD license.

```
Copyright (c) 2016 Aapo Talvensaari
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

* Redistributions of source code must retain the above copyright notice, this
  list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright notice, this
  list of conditions and the following disclaimer in the documentation and/or
  other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR
ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
```