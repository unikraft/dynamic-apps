-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local typedefs = require "kong.db.schema.typedefs"

return {
  name               = "groups",
  generate_admin_api = false,
  primary_key        = { "id" },
  cache_key          = { "name" },
  endpoint_key       = "name",
  admin_api_name = "groups",
  workspaceable      = false,
  db_export = false,

  fields = {
    { id             = typedefs.uuid },
    { created_at     = typedefs.auto_timestamp_s },
    { updated_at     = typedefs.auto_timestamp_s },
    { name           = { type = "string", required = true, unique = true }},
    { comment        = { type = "string" }},
  },
}
