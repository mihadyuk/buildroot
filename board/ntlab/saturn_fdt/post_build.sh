#!/bin/bash
#$(TOPDIR)/board/ntlab/saturn_fdt $(BASE_DIR)
#images_dir=$1
src_dir=$2
dst_dir=$3

(
 cd "$src_dir" || exit $?
 ./copy-to-outdir.sh "$dst_dir"
 #echo "current dir: $(pwd)"
)
#echo "src dir: '$src_dir'"
#echo "dst dir: '$dst_dir'"
#exit 1

