#!/bin/bash

set -eux

arch-chroot /mnt /bin/bash -c 'useradd -G wheel -m user'
arch-chroot /mnt /bin/bash -c 'echo user:user | chpasswd'
