#!/bin/bash

set -eu

read -p pkgname: pkgname

dir="icy/icy/os/x86_64/$pkgname"

install -Dm644 /dev/stdin "$dir/.gitignore" << '!'
/*
!/.gitignore
!/PKGBUILD
!/file
!

install -Dm644 /dev/stdin "$dir/PKGBUILD" << :
pkgname=$pkgname
pkgver=$(date +%Y.%m).0
pkgrel=1
arch=(any)
source=(file)
sha256sums=(SKIP)

package() {
	install -Dm644 "\$srcdir/file" "\$pkgdir/file"
}
:

install -Dm644 /dev/stdin "$dir/file" <<< ''
