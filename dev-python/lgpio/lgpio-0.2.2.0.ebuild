# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8

PYTHON_COMPAT=( python3_{11..13} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 pypi

DESCRIPTION="Linux SBC GPIO module"
HOMEPAGE="
	http://abyz.me.uk/lg/py_lgpio.html
"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64"


RDEPEND="
	!dev-python/RPi-GPIO
	!dev-python/rpi-lgpio
"
DEPEND="${DEPEND}"
