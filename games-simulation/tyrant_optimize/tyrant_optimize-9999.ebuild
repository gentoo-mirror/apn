EAPI=8

DESCRIPTION="Simulator for the card game tyrant_unleashed."
EGIT_REPO_URI="https://gitlab.com/APN-Pucky/tyrant_optimize"

SLOT="0"
LICENSE="GPL-3+"
IUSE=""

RDEPEND="
    dev-libs/boost:=
"

if [[ ${PV} == 9999 ]]; then
    inherit git-r3
else
    inherit git-r3
    EGIT_COMMIT="v${PV}"
    KEYWORDS="~amd64"
fi

src_compile() {
    emake
}

src_install() {
    dobin tuo
}