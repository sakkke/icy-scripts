#!/bin/bash

set -eux

device="$1"

umount --recursive /mnt || true

if [[ -f /icy/build/rootfs-latest.tar ]]; then
	./mount.sh "$device"
	./extract-rootfs.sh
else
	./mount.sh "$device"
	./pacstrap.sh /mnt - < packages.x86_64

	./rootfs.sh
fi

./genfstab.sh
./cp.sh
./locale-gen.sh
./arch-chroot.sh
./passwd.sh
./grub-install.sh
