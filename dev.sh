#!/bin/bash

set -eux

device="$1"

./swapon.sh || true

umount --recursive /mnt || true

if [[ -f /icy/build/rootfs-latest.tar ]]; then
	./mount.sh "$device"
	./extract-rootfs.sh
else
	./mount.sh "$device"
	./pacstrap.sh /mnt - < packages.x86_64

	./rootfs.sh
fi

./swapoff.sh
./genfstab.sh
./swapon.sh
./cp.sh
./locale-gen.sh
./arch-chroot.sh
./passwd.sh
./dconf-update.sh
./grub-install.sh
