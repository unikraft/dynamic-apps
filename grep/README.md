# Grep

The `grep` command line tool is used for searching and matching text files contained in the regular expressions.

## Running the grep Command Using [`run-app-elfloader`](https://github.com/unikraft/run-app-elfloader)

Change directory into `run-app-elfloader` and run a similar command to the following:

```console
./run.sh -r path/to/dynamic-apps/grep /bin/grep [OPTION] [PATTERN] [FILENAME]
```

For example, run:

```console
./run.sh -r ../dynamic-apps/grep /bin/grep -i "World" demotext.txt
```

Output:

```console
SeaBIOS (version 1.16.2-1.fc38)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
             Prometheus 0.14.0~018fe1a4
hello world!!!
```

## Run the `grep` command on Linux

To test the `grep` command run:

```console
/usr/bin/grep [OPTION] [PATTERN] [FILENAME]
```

For example, when in the current directory, run:

```console
/usr/bin/grep -i "hello world" demotext.txt
```

Output:

```text
hello world!!!
```
