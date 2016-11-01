#!/bin/sh

emmc_disk=/dev/mmcblk1

./part-emmc.sh "$emmc_disk" || exit $?
./flash_emmc_linux.sh "$emmc_disk"p1
./flash_emmc_uboot.sh "$emmc_disk"p1