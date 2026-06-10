## IZOS Kernel compile script
cd src
echo "Compiling kernel.."
export KCFLAGS=-std=gnu17 KCPPFLAGS=-std=gnu17 # some flags
make izos-defconfig
make -j$(nproc) ## Compile
## When done, copy the bzImage
mv arch/x86_64/boot/bzImage ../
## Pack initramfs.cpio.gz
cd ../../
echo "Packing initramfs..."
./makeinitramfs.sh

echo "Compilation done !"
