#!/bin/bash
#./flash_linux_kernel.sh /dev/sdb1
SD=$1

sudo mount $1 /mnt || exit $?

sudo cp images/zImage /mnt/boot
sudo cp images/imx6q-saturn.dtb /mnt/boot

sudo umount /mnt
