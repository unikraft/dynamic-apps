# `md5sum` command

This is a simple `md5sum` command.
The contents are:

* `/usr/bin/md5sum`: pre-built Linux ELF
* `lib/, lib64/`: pre-extracted dynamic libraries required to run the md5sum

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the application by using:

```console
../extract.sh ./usr/bin/md5sum
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run for Linux

To test the ELF under Linux, run it as any other executable:

```console
/usr/bin/md5sum hosts
```

The `md5sum` calculates the MD5 hash value (a 128-bit cryptographic checksum) of a file (e.g., hosts).

```text
db6284edfb53cc2817213e595293bd7f  hosts
```

## Run with Unikraft

Run the application with the binary-compatibility mode of Unikraft by using [the `run.sh` script in the `run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
./run.sh  -d -r ../dynamic-apps/md5sum /usr/bin/md5sum /hosts
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
db6284edfb53cc2817213e595293bd7f  /hosts
```
