# .Net Framework (C#) as Dynamic Build

## Run C# Natively on Linux

To run the C# helloworld natively on Linux, run the command below inside the `./lang/c_sharp/helloworld` directory:
```
./bin/Debug/net7.0/helloworld
```
Or you can also simply run:
```
dotnet run
```

## Run C# with Unikraft

To run the C# helloworld on Unikraft, run the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader):

```console
./run.sh -k /path/to/elfloader_qemu-x86_64 -r ../dynamic-apps/lang/c_sharp/ /helloworld/bin/Debug/net7.0/helloworld
```

## Notes for patching

The origin `.Net` runtime creates debug pipes using `SYS_mknodat` syscall, which is not yet implemented in Unikraft.
Setting env `COMPlus_EnableDiagnostics=0` or `DOTNET_EnableDiagnostics=0` could prevent this.

For convenience, we patched [EXTERNAL_EnableDiagnostics](https://github.com/dotnet/runtime/blob/v7.0.7/src/coreclr/inc/clrconfigvalues.h#L162) to be `0` by default.
And it only affects `/usr/share/dotnet/shared/Microsoft.NETCore.App/7.0.7/libcoreclr.so`.

## Notes for procfs

The `.Net` runtime uses [__pthread_getattr_np](https://github.com/bminor/glibc/blob/glibc-2.37/nptl/pthread_getattr_np.c#L85) in [CPalThread::GetStackBase()](https://github.com/dotnet/runtime/blob/v7.0.7/src/coreclr/pal/src/thread/thread.cpp#L2683) and [CPalThread::GetStackLimit()](https://github.com/dotnet/runtime/blob/v7.0.7/src/coreclr/pal/src/thread/thread.cpp#L2723).
And the `glibc` implementation reads `/proc/self/maps` to get stack addresses, see the condition [here](https://github.com/bminor/glibc/blob/glibc-2.37/nptl/pthread_getattr_np.c#L129).

So you have to change the content of `/proc/1/maps` in your `rootfs`, to make your range of stack address contains the real stack area.
Otherwise, the runtime will crash with `Failed to create CoreCLR, HRESULT: 0x8007000E`.

To get to know what's your stack address, see debug information provided in [app-elfloader](https://github.com/unikraft/app-elfloader/blob/bbb92f8c04bd58f0cf52b9e76250b0e03c5fc7e7/main.c#L239).
Change it to `uk_pr_err` and you will see log as follows:
```
ERR:  [appelfloader] <main.c @  239> helloworld: Application stack at 0x400080020 - 0x4000a0020
Failed to create CoreCLR, HRESULT: 0x8007000E
```
Copy the stack addresses into `./proc/1/maps` and replace the example addresses, run again and you will see:
```
Hello world from .Net 7.0!
```
