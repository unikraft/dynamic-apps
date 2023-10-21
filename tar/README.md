# `tar` command

This is a simple `tar` command.
The contents are:

* `/usr/bin/tar`: pre-built Linux ELF
* `lib/, lib64/`: pre-extracted dynamic libraries required to run the `tar`

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the application by using:

```console
../extract.sh ./usr/bin/tar
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /usr/bin/tar ...
Copying /lib/x86_64-linux-gnu/libacl.so.1 ...
Copying /lib/x86_64-linux-gnu/libselinux.so.1 ...
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib/x86_64-linux-gnu/libpcre2-8.so.0 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run for Linux

To test the ELF under Linux, run it as any other executable:

```console
./usr/bin/tar -cvf some.tar some.txt
```

`some.tar` is a tar archive that contains the `some.txt` file.

## Run with Unikraft

Run `tar` with the binary-compatibility mode of Unikraft by using [the `run.sh` script in the `run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
./run.sh -d -r ../dynamic-apps/tar /usr/bin/tar -cvf some.tar some.txt
```

It will create the `some.tar` archive.

```text
SeaBIOS (version 1.15.0-1)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
             Prometheus 0.14.0~f4518e7d
some.txt
```
