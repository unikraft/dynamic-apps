#!/bin/bash

VERSION=3.3.2
# Clean up.
rm -fr *couch*

echo -n "Downloading CouchDB ... "
wget -q https://dlcdn.apache.org/couchdb/source/$VERSION/apache-couchdb-$VERSION.tar.gz
echo ""

echo -n "Unpacking CouchDB ... "
tar xzf apache-couchdb-$VERSION.tar.gz
echo ""

#pushd apache-couchdb-3.3.2.tar.gz > /dev/null 2>&1 || exit

echo "Configuring CouchDB ... "
cd apache-couchdb-$VERSION

# The configuration
./configure --spidermonkey-version 78 

echo -n "Building CouchDB ... "
make -j "$(nproc)"
#popd > /dev/null 2>&1 || exit

cd ../

# Packing the app
mkdir dynamic-couchdb
cd dynamic-couchdb

../../extract.sh ../apache-couchdb-$VERSION/bin/couchjs

mkdir -p usr/bin/
ln -fn ../apache-couchdb-$VERSION/bin/couchjs usr/bin

