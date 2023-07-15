#!/bin/bash

rm -rf iputils

echo "Downloading the source code"
git clone https://github.com/iputils/iputils iputils

echo "Configuring and building..."
pushd iputils &> /dev/null || exit 1
./configure && meson build

echo "Linking the build..."
pushd builddir &> /dev/null || exit 1
ninja

echo "Copying ping, tracepath, clockdiff, arping..."
mkdir -p ../../app-iputils/bin
cp ./arping ./clockdiff ./tracepath ./ping/ping ../../app-iputils/bin/

popd &> /dev/null || exit 1
popd &> /dev/null || exit 1
pushd app-iputils/ &> /dev/null || exit 1

../../extract.sh ./bin/tracepath
../../extract.sh ./bin/tracepath
../../extract.sh ./bin/clockdiff
../../extract.sh ./bin/ping
