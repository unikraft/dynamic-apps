# GnuPG as Dynamic Build

This directory contains the libraries and binaries needed to run [GnuPG]("https://gnupg.org/"), also known as `gpg`, a command line tool for encrypting and singing your data.
For more about the usage of `gpg` visit the [official documentation](https://www.gnupg.org/documentation/).

## Running on Linux

The executable in placed under the `usr/bin/` directory.

```console
usr/bin/gpg -h
```

## Running on Unikraft

To run the binary ELF on Unikraft, use the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader):

```console
sudo ./run.sh -r <path-to-dynamic-apps-repo>/gnupg /usr/bin/gpg
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

