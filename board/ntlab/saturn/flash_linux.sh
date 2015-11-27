#!/bin/sh
# notes:
#
# eMMC should contain two partitions.
#  First one is used as system. Rootfs  should be palced here.
#  Second partition is used for user data, apps, logs etc.
#  You can use fdisk to create partitions on eMMC at fisrt power up.
#
# microsd should contain also two partitions. Firts is boot
# and the second is data partition that contains rootfs
# to be flashed onto onboard eMMC
#
#
#
#flashing onboard eMMC
#mmcblk0p2 - source partition is located on external microsd.
#mmcblk1p1 - dest eMMC partition.
mount /dev/mmcblk0p2 /mnt
dd if=/mnt/rootfs.ext2 of=/dev/mmcblk1p1
sync
umount /mnt
