#!/bin/bash

SD="$1"
./part-sd.sh "$SD" || exit $?
./prepare_microsd.sh "$SD"1
./flash_uboot.sh "$SD"