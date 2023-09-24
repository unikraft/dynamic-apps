# Wget

This is the root directory for `wget` that can be used with Unikraft bincompat mode.

The contents are:

- `lib/` & `lib64/`: The required libraries
- `usr/bin/wget`: the `wget` main binary

## (Re)Extract Dynamic Libraries

You can (re)extract the dynamic libraries required to run `wget` by using:

```console
../extract.sh usr/bin/wget
```

## Run for Linux

```console
wget https://google.com
```

This will download the `index.html`file.

## Run with Unikraft

Run a local http server on our host machine and use `wget` on Unikraft to connect to it.

On the host machine, run:

```console
python3 -m http.server 8080
```

```console
sudo ./run.sh -n -r ../dynamic-apps/wget/ /usr/bin/wget http://172.44.0.1:8080
```

This will download the `index.html` page.
