#!/bin/bash
#./flash_uboot /dev/sdb
SD=$1

sudo dd if=images/u-boot.imx bs=512 seek=2 of="$SD"
sudo dd if=images/uboot-env.bin bs=512 seek=768 of="$SD"
sync
