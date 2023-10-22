# Python Interpreter

This is the Python interpreter, as an ELF file pulled out from a standard Linux filesystem (Ubuntu 22.04).
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* `tail`: the binary file
* `test.txt`: a txt file that can be used to test
* `lib/`, `lib64/`: pre-extracted dynamic libraries required to run the server
* `README.md`: this file

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the server by using:

```console
../../extract.sh /usr/bin/tail
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```


## Run tail on Linux


```
tail text.txt
```


You'll get the reply:

```text
a
b
c
d
e
f
g
h
i
j

```

## Run HTTP Server with Unikraft

Make sure you are in the /run-app-elfloader/ directory

```console
./run.sh -d -r ../dynamic-apps/tail/ tail  test.txt
```

You'll get the reply:

```text
a
b
c
d
e
f
g
h
i
j
```
Can try with any file