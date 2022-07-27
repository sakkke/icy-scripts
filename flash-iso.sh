#!/bin/bash

set -eux

device="$1"

echo 'label: gpt' | sfdisk "$device"
dd bs=16M if=/icy/build/icy-latest.iso of="$device" status=progress
