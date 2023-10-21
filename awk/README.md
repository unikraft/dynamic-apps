# AWK as Dynamic (PIE) Executables

This directory stores the binary executable (ELF - Executable and Linkable Format), dynamic library dependencies and support files to run AWK.
The binary is PIE (Position-Independent Executable).
All files are stored in their expected location from the Linux filesystem hierarchy.
The aim is to run the executable in any Linux ELF-compatible environment: native Linux, chroot/jail, Docker, Unikraft.

## Run a Sample AWK command Natively on Linux

Run the binary using (for example) the following commands:

```console
./usr/bin/awk -f ./hello_world.awk
```

## Run AWK with Unikraft

To run the AWK binary ELF on Unikraft, use the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader).

```console
./run.sh -r ../dynamic-apps/awk /usr/bin/awk -f /hello_world.awk 
```
