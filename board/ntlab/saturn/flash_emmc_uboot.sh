#!/bin/sh
#mount /dev/mmcblk0p2 /mnt
#dd if=/mnt/uboot-mmc/u-boot.imx bs=512 seek=2 of=/dev/mmcblk1
#dd if=/mnt/uboot-mmc/uboot-env.bin bs=512 seek=768 of=/dev/mmcblk1
dd if=u-boot.imx bs=512 seek=2 of=/dev/mmcblk1
dd if=uboot-env.bin bs=512 seek=768 of=/dev/mmcblk1
sync
#umount /mnt

