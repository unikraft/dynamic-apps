# Simple C HTTP Server

This is a simple C HTTP server.
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* `http_server.c`: the source code file for the simple C server
* `Makefile`: recipe file to build the server
* `http_server`: pre-built Linux ELF
* `lib/`, `lib64/`: pre-extracted dynamic libraries required to run the server

## (Re)Build

You can (re)build the `http_server` ELF by running:

```console
make
```

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the server by using:

```console
../../../extract.sh ./http_server
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run for Linux

To test the ELF under Linux, run it as any other executable:

```console
./http_server
```

The server waits for connections on port `8080`.

Then, in another console, query the server:

```console
curl localhost:8080
```

You'll get the reply:

```text
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN"><html><head><title>It works!</title></head><body><h1>It works!</h1><p>This is only a test.</p></body></html>
```

## Run with Unikraft

It's easiest to run the server with the binary-compatibility mode of Unikraft by using [the `run.sh` script in the `run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
sudo ./run.sh -n -r ../dynamic-apps/lang/c/http_server /http_server
```

It will listen for connections on port `8080` on address `172.44.0.2`.

Then, in another console, query the server:

```console
curl 172.44.0.2:8080
```

You'll get the reply:

```text
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN"><html><head><title>It works!</title></head><body><h1>It works!</h1><p>This is only a test.</p></body></html>
```
