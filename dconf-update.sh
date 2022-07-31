#!/bin/bash

set -eux

arch-chroot /mnt /usr/bin/dconf update
