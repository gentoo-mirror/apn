# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Project to automatically propose a PR to a Gentoo repo"
HOMEPAGE="https://github.com/APN-Pucky/pkgpr"

if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/APN-Pucky/pkgpr"
else
	SRC_URI="https://github.com/APN-Pucky/pkgpr/archive/refs/tags/v${PV}.tar.gz -> ${P}.gh.tar.gz"
	KEYWORDS="~amd64 ~arm64 ~riscv"
fi

LICENSE="GPL-3"
SLOT="0"

DEPEND="
	dev-util/pkgdev
	dev-util/github-cli
	>=app-portage/pkg-testing-tools-0.2.3
"
RDEPEND="${DEPEND}"

# No compilation needed
src_compile() {
	:
}

src_install() {
	dobin pkgpr
}
