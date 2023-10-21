# `sed` command

This is a simple `sed` command.
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* `/usr/bin/sed`: pre-built Linux ELF
* `lib/, lib64/`: pre-extracted dynamic libraries required to run `sed`

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the server by using:

```console
../../../extract.sh ./usr/bin/sed
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /usr/bin/sed ...
Copying /lib/x86_64-linux-gnu/libacl.so.1 ...
Copying /lib/x86_64-linux-gnu/libselinux.so.1 ...
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib/x86_64-linux-gnu/libpcre2-8.so.0 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run for Linux

To test the ELF under Linux, open a terminal on your machine and run:

```console
./usr/bin/sed --help
```

## Run with Unikraft

Run `sed` with the binary-compatibility mode of Unikraft by using [the `run.sh` script in the `run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
./run.sh -d -r ../dynamic-apps/sed /usr/bin/sed 'p' input.txt
```

```text
SeaBIOS (version 1.15.0-1)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
             Prometheus 0.14.0~f4518e7d
Hello, World!
Hello, World!
```
