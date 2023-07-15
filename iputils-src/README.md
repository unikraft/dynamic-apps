## Dependencies

```console
sudo apt install meson libcap-dev xsltproc
```

## Installation

```console
./build.sh
```

The script will download the [`iputils` repository](https://github.com/iputils/iputils), install the required dependencies and build the sources.

## Run with Linux

From inside the `app-iputils` directory, run:

```console
./bin/ping 8.8.8.8
```

You should see the following output:

```console
PING 8.8.8.8 (8.8.8.8) 56(84) bytes of data.
64 bytes from 8.8.8.8: icmp_seq=1 ttl=118 time=31.2 ms 
```

Do the same for the other applications (`arping`, `clockdiff`, `tracepath`).

## Run with Unikraft

Run the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader). There are four different executables, as listed below:

```console
./run.sh -r ../dynamic-apps/iputils_src/app-iputils /bin/ping 8.8.8.8
./run.sh -r ../dynamic-apps/iputils_src/app-iputils /bin/arping 172.44.0.1
./run.sh -r ../dynamic-apps/iputils_src/app-iputils /bin/clockdiff 172.44.0.2
./run.sh -r ../dynamic-apps/iputils_src/app-iputils /bin/tracepath 172.44.0.2
```
