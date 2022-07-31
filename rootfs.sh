#!/bin/bash

set -eux

cd /mnt
mkdir -p /icy/build
out=/icy/build/rootfs-$(date +%s).tar
tar -cf - * | pv > $out
ln -fs $out /icy/build/rootfs-latest.tar
