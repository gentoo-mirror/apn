# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Project to automatically propose a PR to a Gentoo repo"
HOMEPAGE="https://github.com/APN-Pucky/pkgpr"
SRC_URI="https://github.com/APN-Pucky/pkgpr/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~riscv"

DEPEND="
	dev-util/pkgdev
	dev-util/github-cli
"
RDEPEND="${DEPEND}"

# No compilation needed
src_compile() {
	:
}

src_install() {
	dobin pkgpr
}
