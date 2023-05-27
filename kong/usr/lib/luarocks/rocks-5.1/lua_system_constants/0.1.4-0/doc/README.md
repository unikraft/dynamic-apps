# lua_system_constants

Lua utility library to retrieve system constants values, based on the architecture this library has been complied for.

## Usage

```lua
local system_constants = require "lua_system_constants"

print(system_constants.O_WRONLY())
print(system_constants.O_CREAT())
print(system_constants.O_APPEND())
print(system_constants.O_TRUNC())
print(system_constants.S_IWUSR())
print(system_constants.S_IRUSR())
print(system_constants.S_IXUSR())

```
