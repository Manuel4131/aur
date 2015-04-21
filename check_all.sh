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

echo python-pysvn
source ./python-pysvn/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = Unavailable

echo python-svn
source ./python-svn/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./scripts/pypi.py svn`

echo python-texttable
source ./python-texttable/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./scripts/pypi.py texttable`

echo nodejs-jpm
source ./nodejs-jpm/PKGBUILD
echo PKGBUILD version = $pkgver
echo Upstream version = `python ./scripts/npmjs.py jpm`

source check_github.sh
