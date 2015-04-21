#!/bin/bash

for f in *-git/PKGBUILD ; do
    _github_addr=''
    source $f
    echo $pkgname
    echo PKGBUILD version = $pkgver
    echo -n "Upstream version = "
    if [ -n "$_github_addr" ] ; then
        python3 ./scripts/github.py $_github_addr $pkgver
    else
        echo Unavailable
    fi
done
