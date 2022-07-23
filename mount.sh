#!/bin/bash

set -eux

device="$1"

efi_system_partition="${device}1"
main_partition="${device}2"

sfdisk "$device" << '!'
label: gpt

size=300MiB, type=U
type=L
!

mkfs.fat -F 32 "$efi_system_partition"
mkfs.ext4 -F "$main_partition"

mount "$main_partition" /mnt
mkdir /mnt/boot
mount "$efi_system_partition" /mnt/boot
