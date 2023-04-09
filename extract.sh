#!/bin/bash

binary="$1"
extract_path="$2"
# By default, do not copy binary.
# Copy binary only if command passed as argument.
# Otherwise, assume the binary path is the destination.
copy_binary=0

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

if [[ "$binary" == *"/"* ]]; then
    binary_path="$binary"
else
    binary_path=$(which "$binary")
    copy_binary=1
fi

if test -z "$binary_path"; then
    echo "Unknown binary $binary" 1>&2
    exit 1
fi

if test ! -f "$binary_path"; then
    echo "$binary_path is not a file" 1>&2
    exit 1
fi

if ! ldd "$binary_path" > /dev/null 2>&1; then
    echo "$binary_path is not an ELF" 1>&2
    exit 1
fi

# First copy the ELF.
if test "$copy_binary" -eq 1; then
    echo "Copying $binary_path ..."
    cp --dereference --parents "$binary_path" "$extract_path"
fi

# Then copy dependencies
for l in $(ldd "$binary_path" | grep -o '/[^ ]*'); do
    echo "Copying $l ..."
    cp --dereference --parents "$l" "$extract_path"
done
