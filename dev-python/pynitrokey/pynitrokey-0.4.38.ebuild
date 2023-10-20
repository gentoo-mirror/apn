EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=( python3_{9..11} )

inherit distutils-r1 pypi

DESCRIPTION="Python client for Nitrokey devices "
HOMEPAGE="
    https://github.com/Nitrokey/pynitrokey
"


if [[ ${PV} == 9999 ]]; then
    inherit git-r3
    EGIT_REPO_URI="https://github.com/Nitrokey/pynitrokey.git"
else
    KEYWORDS="~amd64"
fi

RDEPEND="
    >dev-python/certifi-14.5.14
    dev-python/cffi
    >dev-python/click-8.0.0 <dev-python/click-9
    >=dev-python/cryptography-3.4.4 <dev-python/cryptography-37
    dev-python/ecdsa
    >=dev-python/frozendict-2.3.4 <dev-python/frozendict-2.4.0
    >=dev-python/fido2-1.1.0 <dev-python/fido2-2
    dev-python/intelhex
    dev-python/nkdfu
    >=dev-python/python-dateutil-2.7.0 <dev-python/python-dateutil-2.8.0
    dev-python/pyusb
    dev-python/requests
    >=dev-python/spsdk-1.7.0 <dev-python/spsdk-1.8.0
    dev-python/tqdm
    >=dev-python/urllib3-1.26.7 <=dev-python/urllib3-1.27.0
    dev-python/tlv8
    >=dev-python/typing_extensions-4.3.0 <dev-python/typing_extensions-4.4.0
    dev-python/pyserial
    >=dev-python/protobuf-3.17.3 <dev-python/protobuf-4.0.0
    dev-python/click-aliases
    dev-python/semver
"