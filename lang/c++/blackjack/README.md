# C++ Blackjack

This emulates a game of Blackjack.
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* `./`: Blackjack (as an ELF file)
* `blackjack.cpp`: blackjack source code
* `blackjack`: compiled source code
* `lib/`, `lib64/`: pre-extracted libraries required to run the game
* `README.md`: this file

## (Re)Extract Dynamic Libraries

You can (re)extract the libraries required to run the game by using:

```console
../../../extract.sh ./blackjack ./
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libstdc++.so.6 ...
Copying /lib/x86_64-linux-gnu/libgcc_s.so.1 ...
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib/x86_64-linux-gnu/libm.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run Game Using run-app-elfloader

Clone the [run-app-elfloader](https://github.com/unikraft/run-app-elfloader) repository.
Make sure run-app-elfloader and dynamic-apps is in the same directory.

```console
├── dynamic-apps
└── run-app-elfloader
```

Run the following commands:

```console
cd run-app-elfloader/
./run.sh -d -r ../dynamic-apps/lang/c++/blackjack/ blackjack
```

You should see something like this:

```console

SeaBIOS (version 1.13.0-1ubuntu1.1)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
             Prometheus 0.14.0~018fe1a4
Unshuffled Deck: 
  AS  2S  3S  4S  5S  6S  7S  8S  9S 10S  JS  QS  KS
  AH  2H  3H  4H  5H  6H  7H  8H  9H 10H  JH  QH  KH
  AD  2D  3D  4D  5D  6D  7D  8D  9D 10D  JD  QD  KD
  AC  2C  3C  4C  5C  6C  7C  8C  9C 10C  JC  QC  KC

Shuffled Deck: 
  8S  QH  AC  AH  8H  3C  6C 10S  3D  AD  QS  7C  QD
  JC  JS  AS  4S  2D 10C  6S  KS  KH  4C  QC  4D  5D
  7S  KD  2C 10H  7D  2H  JD  9C  9D  9H  3H  7H 10D
  4H  2S  3S  KC  5C  5S  5H  9S  8D  JH  6H  8C  6D

BLACKJACK
---------
Do you want to play a game of blackjack (y / n)? 
```
