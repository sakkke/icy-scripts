#!/bin/bash

set -eux

out=$(realpath /icy/build/rootfs-latest.tar)
./compress-gz.sh $out
ln -fs $out.gz /icy/build/rootfs-latest.tar.gz
