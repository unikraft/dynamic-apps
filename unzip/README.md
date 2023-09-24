# `unzip` command

This is a simple `unzip` command.
The contents are:

* `/usr/bin/unzip`: pre-built Linux ELF
* `lib/, lib64/`: pre-extracted dynamic libraries required to run the `unzip`

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the application by using:

```console
../extract.sh ./usr/bin/unzip
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run for Linux

To test the ELF under Linux, run it as any other executable:

```console
/usr/bin/unzip hosts.zip
```

`hosts.zip` is a zip archive that contains the `hosts` files.

## Run with Unikraft

Run the server with the binary-compatibility mode of Unikraft by using [the `run.sh` script in the `run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
./run.sh -d -r ../dynamic-apps/unzip /usr/bin/unzip hosts.zip
```

It will unzip the `hosts.zip` archive.

```text
SeaBIOS (version 1.13.0-1ubuntu1.1)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
             Prometheus 0.14.0~018fe1a4
Archive:  hosts.zip
replace hosts? [y]es, [n]o, [A]ll, [N]one, [r]ename: y
  inflating: hosts
```
