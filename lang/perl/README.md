# Perl as a Dynamic Build

For detailed instructions on how to use `Perl`, please visit the [official website](https://www.perl.org/).

## Running on Linux

The `perl` executable is located under `./usr/bin/`.
Also, a simple `helloworld` is provided.

```console
$ ./usr/bin/perl hello.pl
Hello world!
```

## Running on Unikraft

To run the binary ELF on Unikraft, use the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader):

```console
./run.sh -r <path-to-dynamic-apps-repo>/lang/perl /usr/bin/perl hello.pl
```

```text
SeaBIOS (version rel-1.16.2-0-gea1b7a073390-prebuilt.qemu.org)
Booting from ROM..TEST nofollow
Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
                  Atlas 0.13.1~d20aa7cb
Hello world!
```
