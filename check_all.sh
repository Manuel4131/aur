#!/bin/bash
echo Apache Flex SDK
source ./apache-flex-sdk/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./apache-flex-sdk/ver.py`

echo SPIM
source ./spim-svn/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `php ./spim-svn/spim-svn.php`

echo pypy-pip
source ./pypy-pip/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./pypy-pip/ver.py`
