#!/bin/bash

set -eux

chown -R user:user .
sudo -u user makepkg --noconfirm -s
