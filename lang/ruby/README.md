# Ruby Dynamic App

This directory stores required files to run the Ruby 2.5 interpreter.
It consists of the dynamic executable file, required system libraries and required Ruby libraries / components.

Before running, unpack the `usr.tar.gz` archive:

```console
$ tar xf usr.tar.gz
```

The intepreter (located in `usr/bin/ruby2.5`) can then be run on Unikraft in binary compatibility mode, using [`app-elfloader`](https://github.com/unikraft/app-elfloader).
It's easiest to use the `run.sh` script in the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader):

```console
$ ./run.sh -r ../dynamic-apps/lang/ruby/ /usr/bin/ruby2.5 /hello.rb
```
