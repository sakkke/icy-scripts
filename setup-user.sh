#!/bin/bash

set -eux

useradd -m user
cp user /etc/sudoers.d/user
