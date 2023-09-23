#!/bin/bash

binary="$1"
extract_path="$2"

if test -z "$binary"; then
    echo "Binary to extract not provided." 1>&2
    echo 1>&2
    echo "Usage: $0 <binary> [<extract_path>]" 1>&2
    echo 1>&2
    echo "  Default extract path is current directory" 1>&2
    exit 1
fi

if test -z "$extract_path"; then
    extract_path=$(pwd)
fi

if test -z "$binary"; then
    echo "Unknown binary $binary" 1>&2
    exit 1
fi

if test ! -f "$binary"; then
    echo "$binary_path is not a file" 1>&2
    exit 1
fi

if ! ldd "$binary" > /dev/null 2>&1; then
    echo "$binary_path is not an ELF" 1>&2
    exit 1
fi

# First copy the ELF.
echo "Copying $binary ..."
cp --dereference --parents "$binary" "$extract_path"

# Then copy the shared object dependencies.
for l in $(ldd "$binary" | grep -o '/[^ ]*'); do
    echo "Copying $l ..."
    cp --dereference --parents "$l" "$extract_path"
done
