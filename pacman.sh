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
pacman --config /icy/pacman.conf -Sy
pacman --config /icy/pacman.conf --needed --noconfirm "$@"

kill -s KILL $serve_pid
