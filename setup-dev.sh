#!/bin/bash

set -eux

./pacman.sh -S base-devel git

./setup-git.sh
./setup-user.sh
./pacman_conf.sh
