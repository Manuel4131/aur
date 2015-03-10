#!/bin/bash
echo Apache Flex SDK
source ./apache-flex-sdk/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./apache-flex-sdk/ver.py`

echo SPIM
source ./spim-svn/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./scripts/svn_check.py http://svn.code.sf.net/p/spimsimulator/code/`

echo pypy-pip
source ./pypy-pip/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./scripts/pypi.py pip`

echo python2-pylzma
source ./python2-pylzma/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./scripts/pypi.py pylzma`

echo nodejs-jpm
source ./nodejs-jpm/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./scripts/npmjs.py jpm`
