#!/bin/bash

set -eux

pacstrap /mnt base base-devel dkms efibootmgr gnome grub linux-firmware linux-zen linux-zen-headers networkmanager noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra paru-bin vi vim
