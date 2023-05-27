-- LuaRocks configuration
rocks_trees = {
    { name = "user", root = home .. "/.luarocks" };
    { name = "system", root = "/usr/local" };
}
lua_interpreter = "luajit";
variables = {
    LUA_DIR = "/usr/local/openresty/luajit";
    LUA_INCDIR = "/usr/local/openresty/luajit/include/luajit-2.1";
    LUA_BINDIR = "/usr/local/openresty/luajit/bin";
}
