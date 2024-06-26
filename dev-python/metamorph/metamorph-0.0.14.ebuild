# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{9..12} )
inherit distutils-r1

REPO=APN-Pucky

DESCRIPTION="Metamorph generates new text by repeated translating."
HOMEPAGE="
	https://github.com/${REPO}/${PN}
	https://pypi.org/project/${PN}/
"
if [[ ${PV} == 9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/${REPO}/${PN}"
else
	inherit pypi
	KEYWORDS="~amd64"
fi

LICENSE="MIT"
SLOT="0"

RDEPEND="
	dev-python/termcolor[${PYTHON_USEDEP}]
	dev-python/deep-translator[${PYTHON_USEDEP}]
	dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	test? (
		dev-python/pytest-cov[${PYTHON_USEDEP}]
		dev-python/pandas[${PYTHON_USEDEP}]
	)
"
BDEPEND="${RDEPEND}"

src_prepare() {
	default
	# Don't use dynamic versioning
	sed -i "s/version.*=.*\"0\.0\.0\"/version = \"${PV}\"/" pyproject.toml || die
	sed -i "s/requires.*=.*/requires = [\"poetry-core>=1.0.0\"]/" pyproject.toml || die
	sed -i 's/poetry_dynamic_versioning.backend/poetry.core.masonry.api/g' pyproject.toml || die
	#rm --cov=metamorph --cov-config=.coveragerc --cov-append --cov-report=term --cov-report=xml
	sed -i 's/--cov[-=.0-9a-zA-Z]*//g' pyproject.toml || die
}

distutils_enable_tests pytest
