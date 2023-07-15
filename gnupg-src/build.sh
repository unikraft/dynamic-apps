#!/bin/bash

get_and_build() {
    LIB_NAME=$1
    LIB_URL=$2

    wget -q "$LIB_URL"

    echo ""

    tar xvf "$LIB_NAME.tar.bz2" && rm -f "$LIB_NAME.tar.bz2"

    pushd "$LIB_NAME" &> /dev/null || exit 1

    ./autoreconf -i
    ./configure && make -j "$(nproc)" && sudo make install -j "$(nproc)"

    if [ $? -ne 0 ]; then
        echo "Building $LIB_NAME failed!" 1>&2
        exit 1
    fi

    popd &> /dev/null || exit 1
}

LIBGNUPG="gnupg-2.4.3"
LIBGPG_ERROR="libgpg-error-1.47"
LIBGC_CRYPT="libgcrypt-1.10.2"
LIBASSUAN="libassuan-2.5.6"
LIBKSBA="libksba-1.6.4"
LIBNPTH="npth-1.6"

LIBGNUPG_URL="https://gnupg.org/ftp/gcrypt/gnupg/$LIBGNUPG.tar.bz2"
LIBGPG_ERROR_URL="https://gnupg.org/ftp/gcrypt/gpgrt/$LIBGPG_ERROR.tar.bz2"
LIBGC_CRYPT_URL="https://gnupg.org/ftp/gcrypt/libgcrypt/$LIBGC_CRYPT.tar.bz2"
LIBASSUAN_URL="https://gnupg.org/ftp/gcrypt/libassuan/$LIBASSUAN.tar.bz2"
LIBKSBA_URL="https://gnupg.org/ftp/gcrypt/libksba/$LIBKSBA.tar.bz2"
LIBNPTH_URL="https://gnupg.org/ftp/gcrypt/npth/$LIBNPTH.tar.bz2"

cp ../extract.sh .

if [ ! -f "extract.sh" ]; then
    echo "You need extract.sh in order to build!" 1>&2
    exit 1
fi

# Downloading dependencies

echo "Donwloading dependencies ..."

# Building dependencies

get_and_build "$LIBGPG_ERROR" "$LIBGPG_ERROR_URL"
get_and_build "$LIBGC_CRYPT" "$LIBGC_CRYPT_URL"
get_and_build "$LIBASSUAN" "$LIBASSUAN_URL"
get_and_build "$LIBKSBA" "$LIBKSBA_URL"
get_and_build "$LIBNPTH" "$LIBNPTH_URL"
get_and_build "$LIBGNUPG" "$LIBGNUPG_URL"

# Extract

declare -a binaries=("g10/gpg" "agent/gpg-agent" "tools/gpg-card" "tools/gpgconf" 
    "tools/gpgtar" "g10/gpgv" "sm/gpgsm")

mkdir bin

for binary in "${binaries[@]}"; do
    cp "$LIBGNUPG/$binary" bin
    ./extract.sh "$LIBGNUPG/$binary"
done

mv usr/local/lib/libgpg-error.so.0 lib/x86_64-linux-gnu

# Cleanup of dependencies

rm -rf "$LIBNPTH"
rm -rf "$LIBKSBA"
rm -rf "$LIBASSUAN"
rm -rf "$LIBGPG_ERROR"
rm -rf "$LIBGC_CRYPT"
rm -rf "$LIBGNUPG"
rm -rf ./extract.sh 
