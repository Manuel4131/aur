#!/bin/bash

for f in *-git/PKGBUILD ; do
    _github_addr=''
    source $f
    if [ -n "$_github_addr" ] ; then
        echo $pkgname
        echo PKGBUILD version = $pkgver
        echo -n "Upstream version = "
        python3 ./scripts/github.py $_github_addr $pkgver
        echo
    fi
done
