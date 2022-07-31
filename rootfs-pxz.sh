#!/bin/bash

set -eux

out=$(realpath /icy/build/rootfs-latest.tar)
./compress-pxz.sh $out
ln -fs $out.pxz /icy/build/rootfs-latest.tar.pxz
ln -fs $out.xz /icy/build/rootfs-latest.tar.xz
