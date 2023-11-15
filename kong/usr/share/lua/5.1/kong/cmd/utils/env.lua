-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

-- Parts of this file are adapted from the ljsyscall project
-- The ljsyscall project is licensed under the MIT License,
-- and copyrighted as:
--   Copyright (C) 2011-2016 Justin Cormack. All rights reserved.

local ffi = require "ffi"
local log = require "kong.cmd.utils.log"


ffi.cdef [[
  extern char **environ;
]]


local function read_all()
  log.debug("reading environment variables")

  local env = {}

  local environ = ffi.C.environ
  if not environ then
    log.warn("could not access **environ")
    return env
  end

  local i = 0

  while environ[i] ~= nil do
    local l = ffi.string(environ[i])
    local eq = string.find(l, "=", nil, true)

    if eq then
      local name = string.sub(l, 1, eq - 1)
      local val = string.sub(l, eq + 1)
      env[name] = val
    end

    i = i + 1
  end

  return env
end


return {
  read_all = read_all,
}
