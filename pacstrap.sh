#!/bin/bash

set -eux

cat | pacstrap -C /icy/pacman.conf /mnt --color auto --noprogressbar -
