#!/bin/bash

set -eux

./serve.sh &
serve_pid=$!
trap 'kill -s KILL $serve_pid' EXIT

while true; do
	if curl --max-time 2 --output /dev/null http://localhost:8080/sync.sh; then
		break
	fi

	sleep 1
done

pacstrap -C /icy/pacman.conf "$@"
