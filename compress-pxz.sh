#!/bin/bash

set -eux

out="$1"
pv $out | pixz -9 > $out.pxz
