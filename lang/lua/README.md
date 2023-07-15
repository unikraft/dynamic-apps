# Lua as Dynamic (PIE) Executable

This directory stores the binary executable (ELF - *Executable and Linkable Format*), dynamic library dependencies and support files to run Lua.
The binary is PIE (*Position-Independent Executable*).
All files are stored in their expected location in the Linux filesytem hierarchy.
The aim is to run the executable in any Linux ELF-compatible environment: native Linux, chroot/jail, Docker, Unikraft.

The binary ELF is `./usr/bin/lua`.

## Run Lua Natively on Linux

To run the binary ELF natively on Linux, run the command below, while inside this directory (`./lang/lua/`):

```console
./usr/bin/lua
```

The above command will use the loader and support libraries on your native system, not those in this directory.
Because of that, there may be version incompatibilities that give errors such as those below:

```console
./usr/bin/lua: /lib/x86_64-linux-gnu/libm.so.6: version GLIBC_2.29' not found (required by ./usr/bin/lua)
./usr/bin/lua: /lib/x86_64-linux-gnu/libc.so.6: version GLIBC_2.34' not found (required by ./usr/bin/lua)
```

In that case, run the command below that uses the loader and dynamic libraries from the current directory:

```console
./lib64/ld-linux-x86-64.so.2 --library-path ./lib ./usr/bin/lua helloworld.lua
```

## Run Lua with Unikraft

To run the binary ELF on Unikraft, run the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader):

```console
./run.sh -r ../dynamic-apps/lang/lua/ /usr/bin/lua
```

Run `helloworld.lua`:

```console
./run.sh -r ../dynamic-apps/lang/lua/ /usr/bin/lua helloworld.lua
```
