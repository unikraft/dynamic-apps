# FFmpeg as Dynamic Build

You can use the scripts in this repository to build [FFmpeg](https://ffmpeg.org/).
For detailed instructions on how to use `FFmpeg`, please visit the [official documentation](https://ffmpeg.org/documentation.html).

## Dependencies

On Ubuntu run following commands before running `./build.sh`:

```
sudo apt install nasm
sudo apt install pkg-config
```

## Building

Run the `./build.sh` script.
This will download and build `FFmpeg` in the `app-ffmpeg/` directory.

## Running on Linux

When inside `app-ffmpeg`, run:

```console
./ffmpeg
```

When running the application with no arguments, it will display the following message.

```text
ffmpeg version N-111443-g9557bf26b3 Copyright (c) 2000-2023 the FFmpeg developers
  built with gcc 13.1.1 (GCC) 20230429
  configuration:
  libavutil      58. 14.100 / 58. 14.100
  libavcodec     60. 22.100 / 60. 22.100
  libavformat    60. 10.100 / 60. 10.100
  libavdevice    60.  2.101 / 60.  2.101
  libavfilter     9.  8.102 /  9.  8.102
  libswscale      7.  3.100 /  7.  3.100
  libswresample   4. 11.100 /  4. 11.100
Hyper fast Audio and Video encoder
usage: ffmpeg [options] [[infile options] -i infile]... {[outfile options] outfile}...

Use -h to get full help or, even better, run 'man ffmpeg'
```

## Running on Unikraft

To run the binary ELF on Unikraft, run the `run.sh` script from the [`run-app-elfloader` repository](https://github.com/unikraft/run-app-elfloader):

```console
git clone https://github.com/unikraft/run-app-elfloader app-elfloader
cd app-elfloader
./run.sh -r {PATH_TO_app-ffmpeg} /ffmpeg [ffmpeg options]
```

```text
SeaBIOS (version rel-1.16.2-0-gea1b7a073390-prebuilt.qemu.org)
Booting from ROM..Powered by
o.   .o       _ _               __ _
Oo   Oo  ___ (_) | __ __  __ _ ' _) :_
oO   oO ' _ `| | |/ /  _)' _` | |_|  _)
oOo oOO| | | | |   (| | | (_) |  _) :_
 OoOoO ._, ._:_:_,\_._,  .__,_:_, \___)
                  Atlas 0.13.1~d20aa7cb

ffmpeg version N-111443-g9557bf26b3 Copyright (c) 2000-2023 the FFmpeg developers
  built with gcc 13.1.1 (GCC) 20230429
  configuration:
  libavutil      58. 14.100 / 58. 14.100
  libavcodec     60. 22.100 / 60. 22.100
  libavformat    60. 10.100 / 60. 10.100
  libavdevice    60.  2.101 / 60.  2.101
  libavfilter     9.  8.102 /  9.  8.102
  libswscale      7.  3.100 /  7.  3.100
  libswresample   4. 11.100 /  4. 11.100
Hyper fast Audio and Video encoder
usage: ffmpeg [options] [[infile options] -i infile]... {[outfile options] outfile}...

Use -h to get full help or, even better, run 'man ffmpeg'
```

Files that are to be used need to be in the same folder as the executable (i.e. `app-ffmpeg/`), or in a child directory.
