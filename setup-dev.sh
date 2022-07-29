#!/bin/bash

set -eux

./pacman.sh -S base-devel git

./setup-git.sh
