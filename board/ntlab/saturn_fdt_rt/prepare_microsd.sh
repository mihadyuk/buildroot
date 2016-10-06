#!/bin/bash

#prepare microsd for boot. Before startting create two partiotions on microsd.

#copy linux onto boot partition
#sudo mkfs.ext4 /dev/sdb1
#./prepare_microsd.sh /dev/sdb1

SD=$1

sudo mount $1 /mnt || exit $?

sudo rm -Rf /mnt/*
#create root fs
sudo tar xf images/rootfs.tar -C /mnt

#copy scripts to flash emmc
sudo cp flash_emmc_linux.sh      /mnt/root
sudo cp flash_emmc_uboot.sh      /mnt/root
sudo cp S01mount-second-drive.sh /mnt/root

#create dir for logs, data, etc
sudo mkdir -p /mnt/disk-data

#copy neccesary files to flash onto emmc
sudo cp images/u-boot.imx           /mnt/root
sudo cp images/u-boot-emmc.imx      /mnt/root
sudo cp images/uboot-env.bin        /mnt/root
sudo cp images/rootfs.tar           /mnt/root
sudo cp fetch-log.sh                /mnt/root

#copy scripts to debug kernel
sudo cp dump-vmcore.sh  /mnt/root
sudo cp run-kexec.sh    /mnt/root
sudo cp mount-fs.sh     /mnt/root
sudo cp S99run-kexec.sh /mnt/etc/init.d
sudo cp mount-tracing.sh /mnt/root
sudo cp trace-syscalls.sh /mnt/root

sudo umount /mnt

#copy linux onto second partition to be flashed into onboard eMMC.
#sudo mount /dev/sdb2 /mnt
#sudo cp images/rootfs.tar /mnt
#sudo umount /mnt

