
## Query AST Reference

* `build_ast(str:)`: Returns QueryAST from GraphQl document string


### Methods

* `get_data(node:key)`:  Gets data tree has on `node` from decoration
* `set_data(node:key:value)`: Decorates node's data with key value pair 
* `decorate_data(types:schema:data)`: Using type decorator notation, decorates tree's data 
* `get_children_iter(node:)`: Gets all children of `node`. Must resolve fragments automatically
* `get_argument(node:key:)`: Gets value of argument `key` for that field node `node`
* `get_field_name(node:)`: Query attribute name that gave us the node, i.e. `mutation`, `allUsers`, `birthday`, etc.

* `get_op_node(:)`: Entry point node into root operation tree


### Util library

* `filter_iter(iter:fn)`: Wraps an iterator to lazily filter next element


## Schema Reference

* `deserialize_json_data(table:)`: returns `Schema` object with method(s) below.


## Type Decoration Language
Kong has a simple notation for decorating incoming queries based on types.
The user can specify any schema type <Type> and their fields delimited by a dot notation `.`,
the Kong query module will correspondingly follow nested fields and track their type.

### Unions
Unions will not be able to be nested in the decorator notation in current version. 
Decoration for all nodes ending with union types are still allowed. Hence, you could have notation as
`<Type>.fieldOfUnionType` or `<UnionType>`.

### Interfaces
Type notation allows for selection of interfaces specified with field names. 
`<InterfaceType>.interfaceField...`.

### Leaf Types
Enum, Scalar are leaves in any query, so they cannot be nested. Union is also leaf type in the 
decorator language for reasons above. Once a field with leaf type is specified, it cannot continue to be nested.

## Examples



### Rate-limiting Example
```lua
local schema = kong.gql.schema.deserialize_from_json(UPSTREAM_JSON_DATA_TABLE)
local query_ast = kong.gql.query.build_ast(GQL_BODY_STRING)


-- Given `types_array`, i.e ["User.friends.id", ...] and `argument` from HTTP Admin API
-- for multiplier node decoration, we can call this function on `query_ast`
query_ast:decorate_data(types_array, schema, {
    is_multiplier_node = true,
    argument = argument
})


-- Recursive cost function. DFS traverse to compute total cost of query tree
-- 
-- @param query_ast: QueryAst object returned from `build_ast`
-- @param node: current node cost to be added
function calculate_cost(query_ast, node)
    local total_cost = 0
    for child in query_ast:get_children_iter(node) do
        total_cost = total_cost + calculate_cost(query_ast, child)
    end    
    
    if query_ast:get_data(node, "is_multiplier_node") then
        local argument_key = query_ast:get_data(node, "argument")
        total_cost = total_cost * query_ast:get_argument(node, argument_key)
    else -- Default node cost is one if not multiplier node 
        total_cost = total_cost + 1 
    end
    
    return total_cost
end


-- To calculate cost of income query ast
return calculate_cost(query_ast, query_ast:get_op_node())  
```

## Internal Documentation
Not exactly correct. If we keep too "serious" internal documentation, codebase 
change would be costly. This is only a tentative guide.

## Schema

### Methods

* `get_type_ctx_o([str]:)`: From list of strings in Type Decorator Notation (tdn), returns
whether a next field in schema triggers it
* `get_typedef(str:)`: Returns TypeDef object from name string of definition
* `get_field_type(typedef:str)`: Returns Type object from TypeDef object and second argument as string

### Type context object methods

* `next_field(str:)`: Returns another iterator, does not change state of `self`
* `has_ref(:)`: Returns whether types in TDN has referenced this context

