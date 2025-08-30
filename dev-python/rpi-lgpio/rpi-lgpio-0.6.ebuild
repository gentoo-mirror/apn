# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8

PYTHON_COMPAT=( python3_{9..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="A compatibility shim between RPi.GPIO and lgpio"
HOMEPAGE="
	https://rpi-lgpio.readthedocs.io/en/latest/
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"


RDEPEND="
	!dev-pyhton/RPi-GPIO
"
DEPEND="${DEPEND}"
