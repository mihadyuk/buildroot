#!/bin/sh
LOG_DIR=$1

if [ -d "$1" ]; then
   rm -rf "${LOG_DIR:?}"/*
else
    mkdir -p "$1"
fi

mount /dev/mmcblk1p2 /mnt  || exit $?
cp -R /mnt/log/* "$1"
umount /mnt
sync
