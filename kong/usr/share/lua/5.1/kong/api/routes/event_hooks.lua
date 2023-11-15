-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local endpoints = require "kong.api.endpoints"
local event_hooks = require "kong.enterprise_edition.event_hooks"

local kong = kong
local event_hooks_schema = kong.db.event_hooks.schema

return {
  ["/event-hooks"] = {
    GET = endpoints.get_collection_endpoint(event_hooks_schema),
    POST = endpoints.post_collection_endpoint(event_hooks_schema),
  },
  ["/event-hooks/:event_hooks"] = {
    GET = endpoints.get_entity_endpoint(event_hooks_schema),
    DELETE = endpoints.delete_entity_endpoint(event_hooks_schema),
    PATCH = endpoints.patch_entity_endpoint(event_hooks_schema),
  },
  ["/event-hooks/:event_hooks/test"] = {
    schema = event_hooks_schema,
    POST = function(self, db)
      local row, _, err = endpoints.select_entity(self, db, event_hooks_schema)
      if err then
        return endpoints.handle_error(err)
      elseif row == nil then
        return kong.response.exit(404, { message = "Not found" })
      end

      local ok, res, err = event_hooks.test(row, self.args.post)

      if not ok then
        return kong.response.exit(500, { message = "An unexpected error ocurred", err = err })
      end

      return kong.response.exit(200, { data = self.args.post, result = res })
    end,
  },
  ["/event-hooks/:event_hooks/ping"] = {
    schema = event_hooks_schema,
    GET = function(self, db)
      local row, _, err = endpoints.select_entity(self, db, event_hooks_schema)
      if err then
        return endpoints.handle_error(err)
      elseif row == nil then
        return kong.response.exit(404, { message = "Not found" })
      end

      local ok, _, err = event_hooks.ping(row)

      if not ok then
        return kong.response.exit(400, { message = err })
      end

      return kong.response.exit(200)
    end,
  },
  ["/event-hooks/sources"] = {
    GET = function(self, db)
      return kong.response.exit(200, { data = event_hooks.list() })
    end
  },
  ["/event-hooks/sources/:source"] = {
    GET = function(self, db)
      local source = self.params.source
      local sources = event_hooks.list()

      if not sources[source] then
        return kong.response.exit(404, { message = "Not Found" })
      end

      return kong.response.exit(200, { data = sources[source] })
    end
  },
  ["/event-hooks/sources/:source/:event"] = {
    GET = function(self, db)
      local source = self.params.source
      local event = self.params.event

      local sources = event_hooks.list()

      if not sources[source] then
        return kong.response.exit(404, { message = "Not Found" })
      end

      if not sources[source][event] then
        return kong.response.exit(404, { message = "Not Found" })
      end

      return kong.response.exit(200, { data = sources[source][event] })
    end
  },
}
