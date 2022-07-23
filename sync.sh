#!/bin/bash

set -eux

rsync -rlptH --safe-links --delete-delay --delay-updates rsync://mirror.funami.tech/arch/ arch
