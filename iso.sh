#!/bin/bash

set -eux

cwd=$(cd "$(dirname "$0")" && pwd)

./setup-archiso.sh

mkdir -p /icy/build
cd /icy/build
profile=icy-$(date +%s)
cp -R /usr/share/archiso/configs/releng $profile
cd $profile

rm -fr airootfs/etc/systemd/system/getty@tty1.service.d

cp -RT /icy/rootfs/ airootfs
cp -RT /icy/base/ .

sort -o packages.x86_64 -u /icy/packages.x86_64 packages.x86_64

"$cwd/mkarchiso.sh" -v .
ln -Tfs $profile /icy/build/icy-latest
ln -fs $(realpath --relative-to=/icy/build /icy/build/$profile/out/icy-*-x86_64.iso) /icy/build/icy-latest.iso
