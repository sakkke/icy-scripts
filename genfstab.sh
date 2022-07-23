#!/bin/bash

set -eux

genfstab -U /mnt >> /mnt/etc/fstab
