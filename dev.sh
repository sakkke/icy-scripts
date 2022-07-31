#!/bin/bash

set -eux

device="$1"

umount --recursive /mnt || true

if [[ -f /icy/build/rootfs-latest.tar ]]; then
	./mount.sh "$device"
	./extract-rootfs.sh
else
	./serve.sh &
	serve_pid=$!
	trap 'kill -s KILL $serve_pid' EXIT

	while true; do
		if curl --max-time 2 --output /dev/null http://localhost:8080/sync.sh; then
			break
		fi

		sleep 1
	done

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
