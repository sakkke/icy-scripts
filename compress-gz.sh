#!/bin/bash

set -eux

out="$1"
pv $out | pigz --best > $out.gz
