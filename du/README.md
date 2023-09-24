# `du` command

This is a simple `du` command.
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* `/usr/bin/du`: pre-built Linux ELF
* `lib/, lib64/`: pre-extracted dynamic libraries required to run `du`

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the server by using:

```console
../../../extract.sh ./usr/bin/du
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run for Linux

To test the ELF under Linux, open a terminal on your machine and run:

```console
/usr/bin/du -h
```

## Run with Unikraft

Run the server with the binary-compatibility mode of Unikraft by using [the `run.sh` script in the `run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
./run.sh -d -r ../dynamic-apps/du /usr/bin/du -h
```

```text
SeaBIOS (version 1.13.0-1ubuntu1.1)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
             Prometheus 0.14.0~018fe1a4
239K    ./lib64
2.2M    ./lib/x86_64-linux-gnu
2.2M    ./lib
151K    ./usr/bin
155K    ./usr
2.6M    .
```
