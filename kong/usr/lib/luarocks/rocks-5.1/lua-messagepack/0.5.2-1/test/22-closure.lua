#! /usr/bin/lua

require 'Test.More'

plan(5)

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

is( mp.pack('STR'):byte(), 0xA0 + 3, "fixstr" )
is( mp.pack(BINARY'STR'):byte(), 0xC4, "bin8" )

is( mp.pack(42):byte(), 42, "fixnum" )
is( mp.pack(FLOAT(42)):byte(), 0xCA, "float" )

local t = { 'encoded_with_global_settings', BINARY'encoded_as_binary', 42, FLOAT(42) }
local mpac = mp.pack(t)
eq_array( mp.unpack(mpac), { 'encoded_with_global_settings', 'encoded_as_binary', 42, 42 }, "in a table" )
