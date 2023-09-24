# netcat command

This is a simple `netcat` command.
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* /usr/bin/netcat: pre-built Linux ELF
* lib/, lib64/: pre-extracted dynamic libraries required to run the netcat


## (Re)Extract Dynamic Libraries

You can see the list of dynamics libraries for the `netcat` command using the `ldd` command:

```console
$ ldd /usr/bin/netcat

linux-vdso.so.1 (0x00007ffd925e2000)
	libbsd.so.0 => /lib/x86_64-linux-gnu/libbsd.so.0 (0x00007f9e05223000)
	libresolv.so.2 => /lib/x86_64-linux-gnu/libresolv.so.2 (0x00007f9e0520f000)
	libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007f9e04fe7000)
	libmd.so.0 => /lib/x86_64-linux-gnu/libmd.so.0 (0x00007f9e04fda000)
	/lib64/ld-linux-x86-64.so.2 (0x00007f9e052d0000)
```

You can copy the dynamic libraries required to run the `netcat` by using:

```console
cp --parents /lib/x86_64-linux-gnu/libbsd.so.0 /lib/x86_64-linux-gnu/libresolv.so.2 /lib/x86_64-linux-gnu/libc.so.6 /lib/x86_64-linux-gnu/libmd.so.0  /lib64/ld-linux-x86-64.so.2 .
```


## Run for Linux

To test the ELF under Linux, open a terminal on your machine and run:

```console
/usr/bin/netcat -l 8080
````

The `netcat` listens to connections on port 8080. It is waiting for the message to come. Next, open _another_ terminal and past the following:

```console
echo "Hello" | netcat 127.0.0.1 8080
```

This command sends a "Hello" text to the host and the port mentitioned. A "Hello" text should appear in your _first_ terminal.


## Run with Unikraft

It's easiest to run the server with the binary-compatibility mode of Unikraft by using [the run.sh script in the run-app-elfloader repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
sudo ./run.sh -n -d -r ../dynamic-apps/netcat /usr/bin/netcat -l 8080
```
