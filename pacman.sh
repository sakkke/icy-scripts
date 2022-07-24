#!/bin/bash

set -eux

mount -o remount,size=1G /run/archiso/cowspace
pacman --config /icy/pacman.conf -Sy
pacman --config /icy/pacman.conf --needed --noconfirm "$@"
