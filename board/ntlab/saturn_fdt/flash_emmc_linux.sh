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
dst_part=/tmp/dst_part
mkdir -p $dst_part
#mkdir /tmp/src_image
mount /dev/mmcblk1p1 $dst_part
#mount /dev/mmcblk0p2 /tmp/src_image
rm -rf $dst_part/*

#tar xf /tmp/src_image/rootfs.tar -C /tmp/dst_part
tar xf rootfs.tar -C $dst_part

#create mount point for second partition
mkdir -p $dst_part/disk-data
#copy script to automount second partition.
cp S01mount-second-drive.sh $dst_part/etc/init.d

umount $dst_part
#umount /tmp/src_image

rm -rf $dst_part
#rm -rf /tmp/src_image

