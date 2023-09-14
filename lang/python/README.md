# Python Interpreter

This is the Python interpreter, as an ELF file pulled out from a standard Linux filesystem (Ubuntu 22.04).
It's meant to be used with the binary-compatibility mode of Unikraft.

The contents are:

* `python`: the Python interpreter (as an ELF file)
* `http_server.py`: a simple HTTP server implementation in Python
* `lib/`, `lib64/`: pre-extracted dynamic libraries required to run the server
* `README.md`: this file
* `usr.tar.gz`: archive of `usr/` directory consisting of Python libraries

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run the server by using:

```console
../../extract.sh ./python
```

The command output signals the copying of the required dynamic libraries:

```text
Copying /lib/x86_64-linux-gnu/libm.so.6 ...
Copying /lib/x86_64-linux-gnu/libexpat.so.1 ...
Copying /lib/x86_64-linux-gnu/libz.so.1 ...
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Run Interpreter on Linux

To test the Python interpreter run:

```console
./python
```

It will start a Python console:

```text
Python 3.10.12 (main, Jun 11 2023, 05:26:28) [GCC 11.4.0] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>>
```

You can exit the console with the `exit()` command or the `Ctrl+d` keyboard shortcut.

## Run HTTP Server on Linux

Run the HTTP server implemented in `http_server.py` by running:

```console
./python http_server.py
```

The server waits for connections on port `8080`.

Then, in another console, query the server:

```console
curl localhost:8080
```

You'll get the reply:

```text
<html><head><title>https://pythonbasics.org</title></head><p>Request: /</p><body><p>This is an example web server.</p></body></html>
```

## Run HTTP Server with Unikraft

Before running Python with Unikraft, first unpack the `usr.tar.gz` file containing Python libraries:

```console
tar xf usr.tar.gz
```

Running the HTTP server with Unikraft means running the Python interpreter on Unikraft, and passing it the `http_reply.py` script as argument.

It's easiest to run it with the binary-compatibility mode of Unikraft by using [the `run.sh` script in the `run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader/blob/master/run.sh):

```console
sudo ./run.sh -n -r ../dynamic-apps/lang/python /python http_server.py
```

It will listen for connections on port `8080` on address `172.44.0.2`.

Then, in another console, query the server:

```console
curl 172.44.0.2:8080
```

You'll get the reply:

```text
<html><head><title>https://pythonbasics.org</title></head><p>Request: /</p><body><p>This is an example web server.</p></body></html>
```
