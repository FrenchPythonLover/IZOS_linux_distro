#!/usr/bin/env bash

# paths
FS_DIR=./fs
OUTPUT=initramfs.cpio.gz

if [ ! -d "$FS_DIR" ]; then
    echo "Error: $FS_DIR not dir"
    exit 1
fi
sudo chown -R 1000:1000 fs/home/izos

echo "Génération de l'initramfs depuis : $FS_DIR"

cd "$FS_DIR" || exit 1

# Generate initramfs
find . -print0 | cpio --null -ov --format=newc | gzip -1 > "$OUTPUT" # great for dev but on release gzip -9 instead of -1 for smaller size.
mv $OUTPUT ../linux

echo "Created initramfs !"


