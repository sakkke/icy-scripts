#!/bin/bash

set -eux

mount -o remount,size=1G /run/archiso/cowspace
pacman -Sy
pacman --needed --noconfirm -S base-devel git
