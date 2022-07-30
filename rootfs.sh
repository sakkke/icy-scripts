#!/bin/bash

set -eux

cd /mnt
mkdir -p /icy/build
out=/icy/build/rootfs-$(date +%s).tar
tar -cf - * | pv > $out
ln -fs $out /icy/build/rootfs-latest.tar

./compress-gz.sh $out
ln -fs $out.gz /icy/build/rootfs-latest.tar.gz

./compress-zst.sh $out
ln -fs $out.zst /icy/build/rootfs-latest.tar.zst
