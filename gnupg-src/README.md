# GnuPG as Dynamic Build

You can use the scripts in this directory to build [GnuPG]("https://gnupg.org/"), also known as `gpg`, a command line tool for encrypting and singing your data.
For more about the usage of `gpg` visit the [official documentation](https://www.gnupg.org/documentation/).

## Requirements

In order to build `GnuPG`, `libldap` is required.
On `apt-based` distributions, you can install it by running:

```console
sudo apt install libldap2-dev
```

## Building

You can run the `./build.sh` script to build [GnuPG]("https://gnupg.org/"). also known as `gpg`, a command line tool for encrypting and singing your data.
All files are stored in their expected location in the Linux filesytem hierarchy.

```console
./build.sh
```

The script will download GnuPG and it's dependecies, build them and use the `extract.sh` tool to generate the `lib/` `lib64/` and `bin/` directories.

## Running on Linux

The executables are placed under the `bin/` directory.

```console
$ ./bin/gpg --help
gpg (GnuPG) 2.4.3
libgcrypt 1.10.2
Copyright (C) 2023 g10 Code GmbH
License GNU GPL-3.0-or-later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Home:
Supported algorithms:
Pubkey: RSA, ELG, DSA, ECDH, ECDSA, EDDSA
Cypher: IDEA, 3DES, CAST5, BLOWFISH, AES, AES192, AES256, TWOFISH,
        CAMELLIA128, CAMELLIA192, CAMELLIA256
Hash: SHA1, RIPEMD160, SHA256, SHA384, SHA512, SHA224
Compression: Uncompressed, ZIP, ZLIB, BZIP2

Syntax: gpg [options] [files]
Sign, check, encrypt or decrypt
Default operation depends on the input data
[...]
```

## How to Run on Unikraft

To run the binary ELF on Unikraft, run the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader):

```console
sudo ./run.sh -r <path-to-dynamic-apps-repo>/gnupg-src ./bin/gpg
```

This will start the `gpg` application inside a unikernel.
Note that this might not work properly due to issues related to Unikraft.

```text
SeaBIOS (version rel-1.16.2-0-gea1b7a073390-prebuilt.qemu.org)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
                  Atlas 0.13.1~d20aa7cb
gpg (GnuPG) 2.4.3
libgcrypt 1.10.2
Copyright (C) 2023 g10 Code GmbH
License GNU GPL-3.0-or-later <https://gnu.org/licenses/gpl.html>
This is free software: you are free to change and redistribute it.
There is NO WARRANTY, to the extent permitted by law.

Home: /~/.gnupg
Supported algorithms:
Pubkey: RSA, ELG, DSA, ECDH, ECDSA, EDDSA
Cipher: IDEA, 3DES, CAST5, BLOWFISH, AES, AES192, AES256, TWOFISH,
        CAMELLIA128, CAMELLIA192, CAMELLIA256
Hash: SHA1, RIPEMD160, SHA256, SHA384, SHA512, SHA224
Compression: Uncompressed, ZIP, ZLIB, BZIP2
```
