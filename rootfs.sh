#!/bin/bash

set -eux

cd /mnt
mkdir -p /icy/build
out=/icy/build/rootfs-$(date +%s).tar.gz
tar --use-compress-program='gzip -9' -cf $out *
ln -fs $out /icy/build/rootfs-latest.tar.gz
