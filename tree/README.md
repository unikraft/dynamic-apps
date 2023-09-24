# Tree

The tree tool that can be used with bincompat mode of Unikraft.

## Content:

- `lib/` & `lib64/`: required libraries
- `usr/bin/tree`: main binary

## Extracting Dynamic Libraries

We will use the extract script.

```console
../extract.sh usr/bin/tree
```

```
Copying /lib/x86_64-linux-gnu/libc.so.6 ...
Copying /lib64/ld-linux-x86-64.so.2 ...
```

## Running on Linux

```console
tree
```

## Running on Unikraft

```console
./run.sh -r ../dynamic-apps/tree /usr/bin/tree
```

Output:

```
.
|-- README.md
|-- lib
|   `-- x86_64-linux-gnu
|       `-- libc.so.6
|-- lib64
|   `-- ld-linux-x86-64.so.2
`-- usr
    `-- bin
        `-- tree
```

