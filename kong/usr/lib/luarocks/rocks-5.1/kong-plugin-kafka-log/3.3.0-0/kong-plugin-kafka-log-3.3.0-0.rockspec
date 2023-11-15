package = "kong-plugin-kafka-log"
version = "3.3.0-0"
source = {
   url = "git://github.com/kong/kong-plugin-kafka-log",
   tag = "3.3.0"
}
description = {
   summary = "This plugin sends request and response logs to Kafka.",
   homepage = "https://github.com/kong/kong-plugin-kafka-log",
}
dependencies = {
   "lua >= 5.1",
   "kong-lua-resty-kafka == 0.15",
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kafka-log.handler"] = "kong/plugins/kafka-log/handler.lua",
      ["kong.plugins.kafka-log.schema"] = "kong/plugins/kafka-log/schema.lua",
   }
}
