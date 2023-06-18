# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3_{9..11} pypy3 )

inherit distutils-r1 bash-completion-r1 pypi

DESCRIPTION="Install and Run Python Applications in Isolated Environments"
HOMEPAGE="https://github.com/pypa/pipx"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE="bash-completion"

BDEPEND="
	dev-python/hatchling
"
RDEPEND="
	dev-python/userpath
        dev-python/argcomplete
"

python_prepare_all() {
        distutils-r1_python_prepare_all
}

python_install_all() {
        distutils-r1_python_install_all
        use bash-completion && newbashcomp "${FILESDIR}/pipx.bash_completion" pipx
}
