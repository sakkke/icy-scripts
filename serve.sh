#!/bin/bash

set -eux

exec python -m http.server --directory /icy 8080
