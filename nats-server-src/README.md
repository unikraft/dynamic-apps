# Nats Server

## Requirements

In order to build `nats-server`, `Go` is required.
You can find the instructions on how to install it on the [official website](https://go.dev/doc/install).

## Building

To build the [Nats Server](https://github.com/nats-io/nats-server), run the `./build.sh` script.
This should result in an executable named `nats-server`.

```console
./build.sh
```

```console
ls
build.sh  lib  lib64  nats-server
```

## Running on Linux

To run the application on Linux, run the `nats-server` executable:

```console
./nats-server
```

This will start the server that waits for connections on a local port:

```test
[2496882] 2023/09/09 12:49:53.256093 [INF] Starting nats-server
[2496882] 2023/09/09 12:49:53.256149 [INF]   Version:  2.9.20
[2496882] 2023/09/09 12:49:53.256153 [INF]   Git:      [not set]
[2496882] 2023/09/09 12:49:53.256162 [INF]   Name:     NDQ3HQMYUWPAMNXTHDJVP4ZPAXCMSX2WM7LADMJBYAUCJOEXGRUPMWL3
[2496882] 2023/09/09 12:49:53.256166 [INF]   ID:       NDQ3HQMYUWPAMNXTHDJVP4ZPAXCMSX2WM7LADMJBYAUCJOEXGRUPMWL3
[2496882] 2023/09/09 12:49:53.256983 [INF] Listening for client connections on 0.0.0.0:4222
[2496882] 2023/09/09 12:49:53.257625 [INF] Server is ready
```

## Running on Unikraft

To run the `nats-server` on top of Unikraft, run the `run.sh` script from the [`run-app-elfloader`](https://github.com/unikraft/run-app-elfloader) repository:

```console
sudo ./run.sh -n -r <path-to-dynamic-apps-repo>/nats-server-src/ nats-server
```

This will start the `nats-server` inside a unikernel.
Note that it might not work properly due to some issues related to Unikraft.

```text
SeaBIOS (version 1.16.0-debian-1.16.0-5)

iPXE (https://ipxe.org) 00:03.0 C000 PCI2.10 PnP PMM+7EFCAEC0+7EF0AEC0 C000

Booting from ROM..1: Set IPv4 address 172.44.0.2 mask 255.255.255.0 gw 172.44.0.1
en1: Added
en1: Interface is up
Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
                  Atlas 0.13.1~d20aa7cb
[1] 2023/09/09 09:53:51.088653 [INF] Starting nats-server
[1] 2023/09/09 09:53:51.092205 [INF]   Version:  2.9.20
[1] 2023/09/09 09:53:51.094988 [INF]   Git:      [not set]
[1] 2023/09/09 09:53:51.097752 [INF]   Name:     ND6C3OOOWJDYNJ6DNGKTBHC54RYBMTT2TMBL5R4QFSNWVPUZOKV5GHO6
[1] 2023/09/09 09:53:51.102372 [INF]   ID:       ND6C3OOOWJDYNJ6DNGKTBHC54RYBMTT2TMBL5R4QFSNWVPUZOKV5GHO6
[1] 2023/09/09 09:53:51.107438 [INF] Listening for client connections on 0.0.0.0:4222
[1] 2023/09/09 09:53:51.111393 [ERR] Address "0.0.0.0" can not be resolved properly
[1] 2023/09/09 09:53:51.115062 [INF] Server is ready
```
