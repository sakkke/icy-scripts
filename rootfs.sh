#!/bin/bash

set -eux

cd /mnt
mkdir -p /icy/build
out=/icy/build/rootfs-$(date +%s).tar
tar -cf - * | pv > $out
pv $out | pigz --best > $out.gz
ln -fs $out /icy/build/rootfs-latest.tar
ln -fs $out.gz /icy/build/rootfs-latest.tar.gz
