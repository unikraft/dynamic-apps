#!/bin/bash

# Clean up.
rm -fr lua-*

echo -n "Downloading lua ... "
curl -R -O http://www.lua.org/ftp/lua-5.4.6.tar.gz
echo ""

echo -n "Unpacking lua ... "
tar zxf lua-5.4.6.tar.gz
echo ""

cd lua-5.4.6

make all test

cd ..

echo "Configuring lua ... "
../extract.sh lua-5.4.6/src/lua
