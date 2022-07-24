#!/bin/bash

set -eux

cwd=$(cd "$(dirname "$0")" && pwd)

"$cwd/serve.sh" &
serve_pid=$!

while true; do
	if curl --max-time 2 --output /dev/null http://localhost:8080/sync.sh; then
		break
	fi

	sleep 1
done

mkarchiso -C /icy/pacman.conf "$@"

kill -s KILL $serve_pid
