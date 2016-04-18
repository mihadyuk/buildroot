#!/bin/bash
sudo mount /dev/sdb1 /mnt
sudo cp images/zImage /mnt/boot
sudo cp images/imx6q-saturn.dtb /mnt/boot
sudo umount /mnt
