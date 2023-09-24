# `netcat` command

This is a simple `netcat` command.
The contents are:

* `/usr/bin/netcat`: pre-built Linux ELF
* `lib/, lib64/`: pre-extracted dynamic libraries required to run the `netcat`

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the server by using:

```console
../../../extract.sh ./usr/bin/netcat
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run for Linux

To test the ELF under Linux, open a terminal on your machine and run:

```console
/usr/bin/netcat -l 8080
````

The `netcat` listens to connections on port 8080.
It is waiting for the message to come.
Next, open _another_ terminal and past the following:

```console
echo "Hello" | netcat 127.0.0.1 8080
```

This command sends a "Hello" text to the host and the port mentioned.
A "Hello" text should appear in your _first_ terminal.


## Run with Unikraft

Run the server with the binary-compatibility mode of Unikraft by using [the `run.sh` script in the `run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
sudo ./run.sh -n -d -r ../dynamic-apps/netcat /usr/bin/netcat -l 8080
```

You will get some `Protocol not available` errors, since `netcat` uses `SO_REUSEPORT`, which is not yet supported in Unikraft.
