#!/bin/bash

set -eux

arch-chroot /mnt /bin/bash -c 'echo root:root | chpasswd'
