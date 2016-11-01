#!/bin/bash
SD="$1"
(
echo o #create new empty dos partition
echo n # add new partition
echo p #primary partition
echo 1 #part number
echo   # first sector (default 2048)
echo   # last sector
echo w # save changes
) | sudo fdisk "$SD"