# unzip command

This is a simple `unzip` command.
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* /usr/bin/unzip: pre-built Linux ELF
* `lib/`, `lib64/`: pre-extracted dynamic libraries required to run the `unzip`


## (Re)Extract Dynamic Libraries

You can see the list of dynamics libraries for the `unzip` command using the `ldd` command:

```
ldd $(which unzip)
 linux-vdso.so.1 (0x00007ffed119f000)
 libbz2.so.1.0 => /lib/x86_64-linux-gnu/libbz2.so.1.0 (0x00007f6154470000)
 libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f6154248000)
 /lib64/ld-linux-x86-64.so.2 (0x00007f61545ab000)
```
You can copy the dynamic libraries required to run the `unzip` by using:

```console
cp --parents $(which unzip) /lib/x86_64-linux-gnu/libbz2.so.1.0 /lib/x86_64-linux-gnu/libc.so.6 /lib64/ld-linux-x86-64.so.2 .
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libbz2.so.1.0 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run for Linux

To test the ELF under Linux, run it as any other executable, while in the `../dynamic-apps/unzip/` directory:

```console
./usr/bin/unzip hosts.zip
```

It should be noted that "hosts.zip" is a zip file in the same directory.

By using this command, the zip file (e.g., hosts.zip) is unziped. 

## Run with Unikraft

It's easiest to run the server with the binary-compatibility mode of Unikraft by using [the run.sh script in the run-app-elfloader repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
sudo ./run.sh -d -r ../dynamic-apps/unzip /usr/bin/unzip hosts.zip
```

It will unzip the file `hosts.zip` in the `hosts` file.

You can check it out using ... <TODO: add command snippet with cat ../dynamic-apps/unzip/hosts>
