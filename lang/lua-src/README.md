# Usage

Run the `./build.sh` script.
This will download, extract and build `lua` in the `app-lua/` directory.

## Linux

When inside `app-lua`

```console
./lua helloworld.lua
Hello World
```

With no arguments, it will open the Lua console.

```console
> 1
1
> 1+1
2
```

## Unikraft

```console
git clone https://github.com/unikraft/run-app-elfloader app-elfloader
cd app-elfloader
./run.sh -r {PATH_TO_app-lua} /lua [file.lua]
```

You can use the already existent `helloworld.lua` as an example:

```console
./run.sh -r {PATH_TO_app-lua} /lua [file.lua]
```

```console
SeaBIOS (version rel-1.16.2-0-gea1b7a073390-prebuilt.qemu.org)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
                  Atlas 0.13.1~3974970b
Hello World
```

`file.lua` needs to be placed in the `app-lua` directory.
Otherwise, if the file is omitted, it will open the Lua console.

```console
./run.sh -r {PATH_TO_app-lua} /lua
```

```console
SeaBIOS (version rel-1.16.2-0-gea1b7a073390-prebuilt.qemu.org)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
                  Atlas 0.13.1~3974970b
Lua 5.4.6  Copyright (C) 1994-2023 Lua.org, PUC-Rio
> 1+1
2
```
