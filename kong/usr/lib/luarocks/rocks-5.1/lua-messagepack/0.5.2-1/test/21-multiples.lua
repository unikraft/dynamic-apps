#! /usr/bin/lua

require 'Test.More'

plan(5)

local mp1 = require 'MessagePack'
package.loaded['MessagePack'] = nil     -- hack here
local mp2 = require 'MessagePack'

isnt( mp1, mp2 )

mp1.set_array'without_hole'
mp2.set_array'always_as_map'

local t = { 10, 20, nil, 40 }
is( mp1.pack(t):byte(), 0x80 + 3, "array with hole as map" )
is_deeply( mp1.unpack(mp1.pack(t)), t )

is( mp2.pack(t):byte(), 0x80 + 3, "always_as_map" )
is_deeply( mp2.unpack(mp2.pack(t)), t )

