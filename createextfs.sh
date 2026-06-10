#!/usr/bin/env bash
# IZOS extmount creation tool
set -e

IMG="fs_ext.img"
MOUNT="/tmp/fs_ext_mount_$$"
SRC="$(dirname "$0")/fs_ext"

echo "Creating empty file..."
dd if=/dev/zero of="$IMG" bs=1M count=256 status=none

echo "Formatting..."
mkfs.ext4 -F "$IMG" >/dev/null

echo "Mounting..."
mkdir -p "$MOUNT"
sudo mount -o loop "$IMG" "$MOUNT"

cleanup() {
    sudo umount "$MOUNT" 2>/dev/null || true
    rm -rf "$MOUNT"
}
trap cleanup EXIT

echo "Copying files..."
sudo cp -a "$SRC"/. "$MOUNT"/

echo "Done!"