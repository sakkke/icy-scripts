#!/bin/bash

set -eux

dd bs=16M count=512 if=/dev/zero of=/icy/swapfile status=progress
chmod 0600 /icy/swapfile
mkswap /icy/swapfile
