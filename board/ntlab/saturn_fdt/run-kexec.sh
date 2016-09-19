#!/bin/sh

#add "crashkernel=64M@1024M" into boot kernel args. It is experimentally defined.


kexec --type zImage -p /boot/zImage --append="root=/dev/mmcblk0p1 rootwait rw 1 maxcpus=1 reset_devices console=ttymxc0,115200" --dtb=/boot/imx6q-saturn.dtb

