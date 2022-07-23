#!/bin/bash

set -eux

arch-chroot /mnt /bin/bash -c 'passwd -l root'
