#!/bin/bash

set -eux

./serve.sh &
serve_pid=$!

while true; do
	if curl --max-time 2 --output /dev/null http://localhost:8080/sync.sh; then
		break
	fi

	sleep 1
done

mount -o remount,size=1G /run/archiso/cowspace
pacman --color auto --config /icy/pacman.conf --noprogressbar -Sy
pacman --color auto --config /icy/pacman.conf --needed --noconfirm --noprogressbar "$@"

kill -s KILL $serve_pid
