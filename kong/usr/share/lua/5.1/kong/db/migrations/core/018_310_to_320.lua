-- This software is copyright Kong Inc. and its licensors.
-- Use of the software is subject to the agreement between your organization
-- and Kong Inc. If there is no such agreement, use is governed by and
-- subject to the terms of the Kong Master Software License Agreement found
-- at https://konghq.com/enterprisesoftwarelicense/.
-- [ END OF LICENSE 0867164ffc95e54f04670b5169c09574bdbd9bba ]


return {
    postgres = {
      up = [[
        DO $$
            BEGIN
            ALTER TABLE IF EXISTS ONLY "plugins" ADD "instance_name" TEXT;
            ALTER TABLE IF EXISTS ONLY "plugins" ADD CONSTRAINT "plugins_ws_id_instance_name_unique" UNIQUE ("ws_id", "instance_name");
            EXCEPTION WHEN DUPLICATE_COLUMN THEN
            -- Do nothing, accept existing state
            END;
        $$;
      ]]
    },

    cassandra = {
      up = [[
        ALTER TABLE plugins ADD instance_name text;
        CREATE INDEX IF NOT EXISTS plugins_ws_id_instance_name_idx ON plugins(instance_name);
      ]]
    },
  }
