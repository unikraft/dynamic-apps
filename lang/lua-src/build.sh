#!/bin/bash

VERSION="5.4.6"

# Clean up.
rm -fr lua*

echo -n "Downloading lua-$VERSION ... "
wget "https://www.lua.org/ftp/lua-$VERSION.tar.gz"
echo ""

echo "Extracting lua-$VERSION ... "
tar -xvf "lua-$VERSION.tar.gz"

echo "Building lua-$VERSION ... "
pushd "lua-$VERSION" &> /dev/null || exit 1
make

popd &> /dev/null || exit 1
mkdir app-lua

echo "Porting lua-$VERSION ..."

../../extract.sh "lua-$VERSION/src/lua" app-lua
pushd app-lua &> /dev/null || exit 1
cp "../lua-$VERSION/src/lua" .
echo 'print("Hello World")' > helloworld.lua
popd &> /dev/null || exit 1

rm -rf "lua-$VERSION.tar.gz"
