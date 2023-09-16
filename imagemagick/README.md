# Imagemagick

The `Imagemagick` application is used for image manipulation.

For now the only available command is `convert`.

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
