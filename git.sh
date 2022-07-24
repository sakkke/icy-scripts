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

./setup-dev.sh

kill -s KILL $serve_pid

./setup-git.sh
