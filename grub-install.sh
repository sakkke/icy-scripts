#!/bin/bash

set -eux

arch-chroot /mnt /bin/bash -c 'grub-install --bootloader-id=GRUB --efi-directory=/boot --target=x86_64-efi'
arch-chroot /mnt /bin/bash -c 'grub-mkconfig -o /boot/grub/grub.cfg'
