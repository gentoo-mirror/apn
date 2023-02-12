EAPI=8

PYTHON_COMPAT=( python3_{9..10} )
DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1 optfeature

DESCRIPTION="Pympress is a PDF presentation tool designed for dual-screen setups such as presentations and public talks."
HOMEPAGE="https://github.com/Cimbali/pympress"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="vlc"

RDEPEND="
	dev-python/watchdog[${PYTHON_USEDEP}]
	app-text/poppler
	dev-python/pygobject:3[${PYTHON_USEDEP}]
	x11-libs/gtk+:3
	x11-libs/cairo
	x11-libs/gdk-pixbuf
	vlc? ( dev-python/python-vlc[${PYTHON_USEDEP}] )
"
BDEPEND="${RDEPEND}"

pkg_postinst() {
	optfeature "gstreamer support" media-libs/gstreamer
}
