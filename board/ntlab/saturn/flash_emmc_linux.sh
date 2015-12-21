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
mkdir /tmp/dst_part
#mkdir /tmp/src_image
mount /dev/mmcblk1p1 /tmp/dst_part
#mount /dev/mmcblk0p2 /tmp/src_image
rm -rf /tmp/dst_part/*

#tar xf /tmp/src_image/rootfs.tar -C /tmp/dst_part
tar xf rootfs.tar -C /tmp/dst_part

umount /tmp/dst_part
#umount /tmp/src_image

rm -rf /tmp/dst_part
#rm -rf /tmp/src_image

