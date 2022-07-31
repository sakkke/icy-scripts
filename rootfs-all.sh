#!/bin/bash

set -eux

./rootfs-gz.sh
./rootfs-pxz.sh
./rootfs-zst.sh
