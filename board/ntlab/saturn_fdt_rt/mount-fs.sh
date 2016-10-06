#!/bin/sh
# mount
#/dev/root on / type ext4 (rw,relatime,data=ordered)
#devtmpfs on /dev type devtmpfs (rw,relatime,size=890808k,nr_inodes=222702,mode=755)
#proc on /proc type proc (rw,relatime)
#devpts on /dev/pts type devpts (rw,relatime,gid=5,mode=620)
#tmpfs on /dev/shm type tmpfs (rw,relatime,mode=777)
#tmpfs on /tmp type tmpfs (rw,relatime)
#tmpfs on /run type tmpfs (rw,nosuid,nodev,relatime,mode=755)
#sysfs on /sys type sysfs (rw,relatime)
#

#use this command to mount fs from crashkernel
mount -n -t proc proc /proc
echo 0x0100 >/proc/sys/kernel/real-root-dev

mount -n -t devtmpfs devtmpfs /dev

mount -n -t devpts devpts /dev/pts

mount -n -t tmpfs tmpfs /dev/shm
mount -n -t tmpfs tmpfs /tmp
mount -n -t tmpfs tmpfs /run
mount -n -t sysfs sysfs /sys








