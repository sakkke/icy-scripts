#!/bin/bash

set -eux

env SDL_VIDEODRIVER=wayland run_archiso -i /icy/build/icy-latest.iso -u
