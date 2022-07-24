#!/bin/bash

set -eux

device="$1"

umount --recursive /mnt || true

./serve.sh &
serve_pid=$!

while true; do
	if curl --max-time 2 --output /dev/null http://localhost:8080/sync.sh; then
		break
	fi

	sleep 1
done

./mount.sh "$device"
./pacstrap.sh < packages.x86_64

kill -s KILL $serve_pid

./genfstab.sh
./cp.sh
./locale-gen.sh
./arch-chroot.sh
./passwd.sh
./grub-install.sh
