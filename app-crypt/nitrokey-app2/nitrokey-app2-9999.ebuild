# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1


if [[ ${PV} == 9999 ]]; then
    inherit git-r3
    EGIT_REPO_URI="https://github.com/Nitrokey/nitrokey-app2.git"
else
    SRC_URI="https://github.com/Nitrokey/nitrokey-app2/archive/refs/tags/v${PV}.tar.gz"
    KEYWORDS="~amd64"
fi

RDEPEND="
    dev-python/pynitrokey
"