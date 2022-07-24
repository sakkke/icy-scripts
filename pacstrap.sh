#!/bin/bash

set -eux

pacstrap -C /icy/pacman.conf "$@"
