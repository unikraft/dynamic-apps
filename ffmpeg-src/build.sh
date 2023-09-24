#!/bin/bash

# Clean up
rm -fr ffmpeg* app-ffmpeg

git clone --depth 1 --branch n6.0 https://git.ffmpeg.org/ffmpeg.git ffmpeg


echo "Configuring ffmpeg..."
pushd ffmpeg &> /dev/null || exit 1
./configure

echo "Building ffmpeg..."
make -j "$(nproc)"

popd &> /dev/null || exit 1
mkdir app-ffmpeg
echo "Extracting ffmpeg..."

../extract.sh ffmpeg/ffmpeg app-ffmpeg
pushd app-ffmpeg &> /dev/null || exit 1
cp ../ffmpeg/ffmpeg .
