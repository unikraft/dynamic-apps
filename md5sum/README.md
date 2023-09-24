# md5sum command

This is a simple `md5sum` command.
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* /usr/bin/md5sum: pre-built Linux ELF
* lib/, lib64/: pre-extracted dynamic libraries required to run the md5sum


## (Re)Extract Dynamic Libraries

You can see the list of dynamics libraries for the `md5sum` command using the `ldd` command:

```console
$ ldd /usr/bin/md5sum

linux-vdso.so.1 (0x00007fffd1272000)
 libc.so.6 => /lib/x86_64-linux-gnu/libc.so.6 (0x00007fa399cac000)
 /lib64/ld-linux-x86-64.so.2 (0x00007fa399eea000)

```

You can copy the dynamic libraries required to run the `md5sum` by using:

```console
cp --parents /lib/x86_64-linux-gnu/libc.so.6 /lib64/ld-linux-x86-64.so.2 .
```


## Run for Linux

To test the ELF under Linux, run it as any other executable:

```console
/usr/bin/md5sum hosts
````

The `md5sum` calculates the MD5 hash value (a 128-bit cryptographic checksum) of a file (e.g., hosts).

You can see the content of hosts file by using the following command:

```console
$ cat hosts

127.0.0.1 localhost
127.0.1.1 unikraft
::1     ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
```


## Run with Unikraft

It's easiest to run the server with the binary-compatibility mode of Unikraft by using [the run.sh script in the run-app-elfloader repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
./run.sh  -d -r ../dynamic-apps-mohsen/md5sum /usr/bin/md5sum /hosts
```

