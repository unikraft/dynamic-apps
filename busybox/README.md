# BusyBox

`BusyBox` combines tiny versions of many common UNIX utilities into a single small executable.
For more detailed information, visit the [`BusyBox` website](https://www.busybox.net/about.html).

## Running on Linux

In order to run `BusyBox` on Linux, use the executable under the `./bin/` directory:

## Running on Unikraft

To run the binary ELF on Unikraft, run the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader):

**Note:** You can only run no-fork applets in Unikraft:

- `basename`
- `dirname`
- `echo`
- `false`
- `fsync`
- `hostid`
- `logname`
- `mkdir`
- `printf`
- `pwd`
- `rmdir`
- `sleep`
- `sync`
- `test`
- `touch`
- `true`
- `usleep`
- `whoami`
- `yes`

```console
git clone https://github.com/unikraft/run-app-elfloader app-elfloader
cd app-elfloader
./run.sh -r {PATH_TO_app-busybox} /bin/busybox whoami
```

```text
SeaBIOS (version rel-1.16.2-0-gea1b7a073390-prebuilt.qemu.org)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
                  Atlas 0.13.1~d20aa7cb
whoami: unknown uid 0
```
