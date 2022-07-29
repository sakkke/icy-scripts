#!/bin/bash

set -eux

./pacman.sh -S base-devel git helix

./setup-git.sh
./setup-user.sh
./pacman_conf.sh

./swapon.sh
