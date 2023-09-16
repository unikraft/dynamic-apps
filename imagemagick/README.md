# Imagemagick

The `Imagemagick` application is used for image manipulation.

For now the only available commands are `magick` (the main command) and `convert` (alias to `magick convert`).
Other subcommands may not work.

## Running the Magick Command Using [`run-app-elfloader`](https://github.com/unikraft/run-app-elfloader)

To run the magick command, you also need to provide a valid subcommand.
For now the only subcommand we can assure is working is `convert`.
Change directory into `run-app-elfloader` and run a similar command to the following:

```console
./run.sh -r path/to/dynamic-apps/imagemagick /usr/bin/magick [subcommand] [image to be converted] [converted image]
```

## Run the `Magick` command on Linux

To test the `magick` command run:

```console
usr/bin/magick [subcommand] [image to be converted] [converted image]
```

For example, when in the current directory, run:

```console
usr/bin/magick convert img.png img.jpg
```

## Running the Convert Command Using [`run-app-elfloader`](https://github.com/unikraft/run-app-elfloader)

To run the convert command, you first need the image you want to convert inside in the `dynamic-apps/imagemagick/` directory.
After that, change directory into `run-app-elfloader` and run the following command:

```console
./run.sh -r path/to/dynamic-apps/imagemagick /usr/bin/convert [image to be converted] [converted image]
```

After the conversion is finished, you can press `Ctrl+C` to exit.

## Run the `Convert` command on Linux

To test the `convert` command run:

```console
usr/bin/convert [image to be converted] [converted image]
```

For example, when in the current directory, run:

```console
usr/bin/convert img.png img.jpg
```
