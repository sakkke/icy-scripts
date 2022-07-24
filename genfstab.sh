#!/bin/bash

set -eux

genfstab -t PARTUUID /mnt >> /mnt/etc/fstab
