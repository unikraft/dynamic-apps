-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local function set_node(item)
  local f_cache = {}

  if item then
    debug.setmetatable(item, {
      __index = function(_item, key)
        if f_cache[key] then
          return f_cache[key]()
        end
  
        return nil
      end,
      __call = function(cb, ...)
        local value = cb(...)
        if type(value) ~= "string" and type(value) ~= "table" then
          set_node(value)
        end
  
        return value
      end,
      __newindex = function(item, key, value)
        -- if type is function and no arguments are
        -- present in table, treat function as a getter
        -- by assigning value to proxy table, forcing
        -- custom __index metamethod on access.
        if type(value) == "function" then
          if debug.getinfo(value).nparams == 0 then
            f_cache[key] = value
  
            return
          end
        end
  
        -- if type is table, reassign values items
        -- to force node props on children
        -- (will crawl through nested tables)
        if type(value) == "table" then
          local proxy = {}
          set_node(proxy)
          for k, v in pairs(value) do
            proxy[k] = v
          end
          value = proxy
        end
  
        if type(value) ~= "string" and type(value) ~= "table" then
          set_node(value)
        end
  
        -- set table without retriggering __newindex
        rawset(item, key, value)
      end
    })
  end
end


return {
  set_node = set_node
}
