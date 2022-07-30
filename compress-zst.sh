#!/bin/bash

set -eux

out="$1"
pv $out | zstd --ultra -22 -T0 > $out.zst
