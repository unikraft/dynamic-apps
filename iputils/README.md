# iputils as Dynamic (PIE) Executables

This directory stores the binary executable (ELF - Executable and Linkable Format), dynamic library dependencies and support files to run the applications provided by iputils.
The binary is PIE (Position-Independent Executable).
All files are stored in their expected location from the Linux filesystem hierarchy.
The aim is to run the executable in any Linux ELF-compatible environment: native Linux, chroot/jail, Docker, Unikraft.

## Tools Included in iputils

- [ping](https://man7.org/linux/man-pages/man8/ping.8.html) - send ICMP requests to network hosts
- [tracepath](https://man7.org/linux/man-pages/man8/tracepath.8.html) - trace path to a network host
- [arping](https://man7.org/linux/man-pages/man8/arping.8.html) - send ARP requests to a neighbour host
- [clockdiff](https://man7.org/linux/man-pages/man8/clockdiff.8.html) - measure clock difference between hosts

## Run iputils Natively on Linux

Run the binaries using (for example) the following commands:

```console
ping 8.8.8.8
tracepath 8.8.8.8
arping 8.8.8.8
clockdiff 8.8.8.8
```

## Run iputils with Unikraft

To run the binary ELF on Unikraft, run the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader).
All binaries in this directory need networking, so we have to use the option `-n`.
For example, the command for `ping` is:

```console
sudo ./run.sh -n -r ../dynamic-apps/iputils /bin/ping 8.8.8.8
```
