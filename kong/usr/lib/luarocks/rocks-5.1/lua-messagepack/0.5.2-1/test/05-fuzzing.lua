#! /usr/bin/lua

require 'Test.More'

if package.loaded['luacov'] then
    skip_all('coverage')
else
    plan 'no_plan'
end

local mp = require 'MessagePack'

local unpack = table.unpack or unpack
math.randomseed(os.time())
for _ = 1, 1000000 do
    local t = {}
    for i = 1, 128 do
        t[i] = math.random(0, 255)
    end
    local data = string.char(unpack(t))
    local r, msg = pcall(mp.unpack, data)
    if r == true then
        pass()
    else
        if     not msg:match'extra bytes$'
           and not msg:match'missing bytes$'
           and not msg:match'is unimplemented$' then
            diag(table.concat(t, ' '))
            diag(msg)
            fail()
        end
    end
end

done_testing()
