-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local endpoints = require "kong.api.endpoints"


local kong = kong


local dp_collection_endpoint = endpoints.get_collection_endpoint(kong.db.clustering_data_planes.schema)


return {
  ["/clustering/data-planes"] = {
    schema = kong.db.clustering_data_planes.schema,
    methods = {
      GET = function(self, dao, helpers)
        if kong.configuration.role ~= "control_plane" then
          return kong.response.exit(400, {
            message = "this endpoint is only available when Kong is " ..
                      "configured to run as Control Plane for the cluster"
          })
        end

        return dp_collection_endpoint(self, dao, helpers)
      end,
    },
  },

  ["/clustering/status"] = {
    schema = kong.db.clustering_data_planes.schema,
    methods = {
      GET = function(self, db, helpers)
        if kong.configuration.role ~= "control_plane" then
          return kong.response.exit(400, {
            message = "this endpoint is only available when Kong is " ..
                      "configured to run as Control Plane for the cluster"
          })
        end

        local data = {}

        for row, err in kong.db.clustering_data_planes:each() do
          if err then
            kong.log.err(err)
            return kong.response.exit(500, { message = "An unexpected error happened" })
          end

          data[row.id] = {
            config_hash = row.config_hash,
            hostname    = row.hostname,
            ip          = row.ip,
            last_seen   = row.last_seen,
          }
        end

        return kong.response.exit(200, data, {
          ["Deprecation"] = "true" -- see: https://tools.ietf.org/html/draft-dalal-deprecation-header-03
        })
      end,
    },
  },
}
