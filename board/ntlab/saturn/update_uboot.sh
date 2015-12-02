#!/bin/bash
rm -f images/u-boot.imx images/uboot-env.bin
make uboot-rebuild
make
