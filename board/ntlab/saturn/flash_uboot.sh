#!/bin/bash
sudo dd if=images/u-boot.imx bs=512 seek=2 of=/dev/sdb
sudo dd if=images/uboot-env.bin bs=512 seek=768 of=/dev/sdb