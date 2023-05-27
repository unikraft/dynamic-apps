package = "kong-gql"
version = "0.2.3-0"
source = {
   url = "git+https://github.com/baokong/kong-gql.git"
}
description = {

   summary = "Development kit for GraphQL integration",
   homepage = "https://github.com/baokong/kong-gql",
   license = "MIT"
}

dependencies = {
   "lpeg_patterns == 0.5",
}

build = {
   type = "builtin",
   modules = {
      ["kong.gql.query.build_ast"]              = "query/build_ast/init.lua",
      ["kong.gql.query.build_ast.parse"]        = "query/build_ast/parse.lua",
      ["kong.gql.query.build_ast.iter_stack"]   = "query/build_ast/iter_stack.lua",
      ["kong.gql.query.ast"]                    = "query/ast.lua",

      ["kong.gql.query.nodes.document_node"]    = "query/nodes/document_node.lua",
      ["kong.gql.query.nodes.field_node"]       = "query/nodes/field_node.lua",
      ["kong.gql.query.nodes.fragment_def_node"] = "query/nodes/fragment_def_node.lua",
      ["kong.gql.query.nodes.inline_fragment_node"] = "query/nodes/inline_fragment_node.lua",
      ["kong.gql.query.nodes.fragment_spread"]  = "query/nodes/fragment_spread.lua",
      ["kong.gql.query.nodes.node"]             = "query/nodes/node.lua",
      ["kong.gql.query.nodes.operation_node"]   = "query/nodes/operation_node.lua",
      ["kong.gql.query.nodes.selectable_node"]  = "query/nodes/selectable_node.lua",
      ["kong.gql.query.nodes"] = "query/nodes/init.lua",
      ["kong.gql.query.nodes.types.directive"] = "query/nodes/types/directive.lua",
      ["kong.gql.query.nodes.types.var_def"] = "query/nodes/types/var_def.lua",

      ["kong.gql.schema.field_def"] = "schema/field_def.lua",
      ["kong.gql.schema"] = "schema/init.lua",
      ["kong.gql.schema.tdn"] = "schema/tdn.lua",
      ["kong.gql.schema.type"] = "schema/type.lua",
      ["kong.gql.schema.typedefs.base"] = "schema/typedefs/base.lua",
      ["kong.gql.schema.typedefs.enum"] = "schema/typedefs/enum.lua",
      ["kong.gql.schema.typedefs.input"] = "schema/typedefs/input.lua",
      ["kong.gql.schema.typedefs.interface"] = "schema/typedefs/interface.lua",
      ["kong.gql.schema.typedefs.object"] = "schema/typedefs/object.lua",
      ["kong.gql.schema.typedefs.scalar"] = "schema/typedefs/scalar.lua",
      ["kong.gql.schema.typedefs.schema"] = "schema/typedefs/schema.lua",
      ["kong.gql.schema.typedefs.union"] = "schema/typedefs/union.lua",
      ["kong.gql.util"] = "util.lua",
      ["kong.gql.object"] = "object.lua"
   }
}
