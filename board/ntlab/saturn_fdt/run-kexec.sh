#!/bin/sh


kexec --type zImage -p /boot/zImage --append="root=/dev/mmcblk0p1 rootwait rw 1 maxcpus=1 reset_devices console=ttymxc0,115200" --dtb=/boot/imx6q-saturn.dtb

