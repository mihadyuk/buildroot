#!/bin/sh

#mount /dev/mmcblk0p1 /mnt || exit $?

#cp /proc/vmcore /mnt/root

#umount /mnt

cp /proc/vmcore /root
sync


