#!/bin/bash

set -eux

out=$(realpath /icy/build/rootfs-latest.tar)
./compress-zst.sh $out
ln -fs $out.zst /icy/build/rootfs-latest.tar.zst
