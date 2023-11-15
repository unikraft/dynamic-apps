-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]

local utils = require("kong.tools.utils")


local CLUSTER_ID = utils.uuid()


return {
  postgres = {
    up = string.format([[
      CREATE TABLE IF NOT EXISTS "parameters" (
        key            TEXT PRIMARY KEY,
        value          TEXT NOT NULL,
        created_at     TIMESTAMP WITH TIME ZONE
      );

      INSERT INTO parameters (key, value) VALUES('cluster_id', '%s')
      ON CONFLICT DO NOTHING;

      DO $$
      BEGIN
        ALTER TABLE IF EXISTS ONLY "certificates" ADD "cert_alt" TEXT;
      EXCEPTION WHEN DUPLICATE_COLUMN THEN
        -- Do nothing, accept existing state
      END;
      $$;

      DO $$
      BEGIN
        ALTER TABLE IF EXISTS ONLY "certificates" ADD "key_alt" TEXT;
      EXCEPTION WHEN DUPLICATE_COLUMN THEN
        -- Do nothing, accept existing state
      END;
      $$;

      DO $$
      BEGIN
        ALTER TABLE IF EXISTS ONLY "clustering_data_planes" ADD "version" TEXT;
      EXCEPTION WHEN DUPLICATE_COLUMN THEN
        -- Do nothing, accept existing state
      END;
      $$;

      DO $$
      BEGIN
        ALTER TABLE IF EXISTS ONLY "clustering_data_planes" ADD "sync_status" TEXT NOT NULL DEFAULT 'unknown';
      EXCEPTION WHEN DUPLICATE_COLUMN THEN
        -- Do nothing, accept existing state
      END;
      $$;
    ]], CLUSTER_ID),
  },
  cassandra = {
    up = [[
      CREATE TABLE IF NOT EXISTS parameters(
        key            text,
        value          text,
        created_at     timestamp,
        PRIMARY KEY    (key)
      );

      ALTER TABLE certificates ADD cert_alt TEXT;
      ALTER TABLE certificates ADD key_alt TEXT;
      ALTER TABLE clustering_data_planes ADD version text;
      ALTER TABLE clustering_data_planes ADD sync_status text;
    ]],
    teardown = function(connector)
      local coordinator = assert(connector:get_stored_connection())
      local cassandra = require "cassandra"
      local _, err = coordinator:execute(
        "INSERT INTO parameters (key, value) VALUES (?, ?)",
        {
          cassandra.text("cluster_id"),
          cassandra.text(CLUSTER_ID)
        }
      )
      if err then
        return nil, err
      end
      return true
    end,
  }
}
