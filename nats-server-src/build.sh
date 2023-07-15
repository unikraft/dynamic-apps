#!/bin/bash

ver=2.9.20
version="v${ver}"
name=nats-server
tarball="${version}.tar.gz"

extract=../extract.sh

rm -rf "${tarball}" "${appname}" "${name}"

echo Downloading "${version}"
wget -q "https://github.com/nats-io/nats-server/archive/refs/tags/${version}.tar.gz"

appname="${name}-${version}"

echo Unpacking "${appname}"
tar xzf "${tarball}"

rm -f "${tarball}"

echo Go setup and build
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

pushd "${name}-${ver}" &> /dev/null || exit 1

go build -ldflags "-linkmode 'external' -extldflags '-pie'" -buildmode=pie

popd &> /dev/null || exit 1

cp "${name}-${ver}/${name}" .
rm -rf "${name}-${ver}"

echo Extracting libs
$extract "./${name}"

echo "Finished"
