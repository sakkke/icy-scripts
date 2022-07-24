#!/bin/bash

set -eux

cat packages.x86_64 | pacstrap -C /icy/pacman.conf /mnt --color auto --noprogressbar -
