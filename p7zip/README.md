# p7zip

This is the p7zip compression utility that can be used with Unikraft bincompat mode.

## Content

- `lib/` & `lib64/`: required libs for p7zip
- `/7z`: the 7z main binary
- `7z.so`, `7za`, `7zCon.sfx`, `7zr`: different code modules for p7zip that will be used by 7z binary to perform different operations.

## Extracting Dynamic Libraries

```console
../extract.sh ./7z
```

## Running on Linux

This will create a new archive called `archive.zip` and add the file `README.md` to it.

```console
7z a archive.zip README.md
```

This will extract the archive:

```console
7z x archive.zip
```

## Running on Unikraft

This will create a new archive called `archive.zip` and add the file `README.md` to it.

```console
./run.sh -r ../dynamic-apps/p7zip /7z a archive.zip README.md
```

This will extract an archive file called `archive.zip`.

```console
./run.sh -r ../dynamic-apps/p7zip /7z x archive.zip
```

We can use this command to check that everything worked properly:

```console
7z l archive.zip
```
