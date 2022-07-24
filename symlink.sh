#!/bin/bash

set -eux

ln -Ts icy-scripts/arch arch || true
ln -Ts icy-scripts/base base || true
ln -Ts icy-scripts/icy icy || true
ln -Ts icy-scripts/rootfs rootfs || true
ln -s icy-scripts/mirrorlist mirrorlist || true
ln -s icy-scripts/pacman.conf pacman.conf || true
ln -s icy-scripts/packages.x86_64 packages.x86_64 || true
ln -s icy-scripts/sync.sh sync.sh || true
