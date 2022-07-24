#!/bin/bash

set -eux

ln -Ts icy-scripts/arch arch || true
ln -Ts icy-scripts/icy icy || true
ln -s icy-scripts/mirrorlist mirrorlist || true
ln -s icy-scripts/pacman.conf pacman.conf || true
ln -s icy-scripts/sync.sh sync.sh || true
