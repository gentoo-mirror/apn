# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit unpacker xdg

DESCRIPTION="Rustdesk"
HOMEPAGE="https://www.rustdesk.com/"

SRC_URI="https://github.com/rustdesk/${PN}/releases/download/${PV}/${P}.deb"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

QA_PREBUILT="*"

DEPEND="
	x11-misc/xdotool
"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}"

src_install() {
	cp -a "${S}"/* "${D}" || die
}

