# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# src: https://stackoverflow.com/questions/16634291/ebuild-example-for-project-in-go

EAPI=7
inherit golang-vcs golang-build




DESCRIPTION="Execute scripts on IMAP mailbox changes using IDLE, golang version."
HOMEPAGE="https://gitlab.com/shackra/goimapnotify"
SRC_URI=""
EGIT_REPO_URI="https://gitlab.com/shackra/goimapnotify.git"

EGO_PN="gitlab.com/shackra/goimapnotify"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

if [[ "${PV}" != "9999" ]] ; then
   REFS="refs/tags/${PV}"
   TAG="${PV}"
fi





DEPEND="dev-lang/go"
RDEPEND="${DEPEND}"
BDEPEND=""

#inherit go-module

EGO_SUM=(
"github.com/davecgh/go-spew v1.1.0/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38="
"github.com/davecgh/go-spew v1.1.1 h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c="
"github.com/davecgh/go-spew v1.1.1/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38="
"github.com/emersion/go-imap v1.0.0-beta.4.0.20190414203716-b7db4a2bc5cc h1:0TL/7nQUfh/KpcmVDQN0z5EJ384LzoWzjFRKyrkRaaE="
"github.com/emersion/go-imap v1.0.0-beta.4.0.20190414203716-b7db4a2bc5cc/go.mod h1:mOPegfAgLVXbhRm1bh2JTX08z2Y3HYmKYpbrKDeAzsQ="
"github.com/emersion/go-imap v1.0.6/go.mod h1:yKASt+C3ZiDAiCSssxg9caIckWF/JG7ZQTO7GAmvicU="
"github.com/emersion/go-imap v1.2.0 h1:lyUQ3+EVM21/qbWE/4Ya5UG9r5+usDxlg4yfp3TgHFA="
"github.com/emersion/go-imap v1.2.0/go.mod h1:Qlx1FSx2FTxjnjWpIlVNEuX+ylerZQNFE5NsmKFSejY="
"github.com/emersion/go-imap-idle v0.0.0-20180114101550-2af93776db6b h1:q4qkNe/W10qFGD3RWd4meQTkD0+Zrz0L4ekMvlptg60="
"github.com/emersion/go-imap-idle v0.0.0-20180114101550-2af93776db6b/go.mod h1:o14zPKCmEH5WC1vU5SdPoZGgNvQx7zzKSnxPQlobo78="
"github.com/emersion/go-imap-idle v0.0.0-20210907174914-db2568431445 h1:dAGbaaU4LLupO7dnYZaELOoI3RoVDNi5DCGejLe8a7c="
"github.com/emersion/go-imap-idle v0.0.0-20210907174914-db2568431445/go.mod h1:N/6S3dRTVt8xT867m+476C16+v/Fq4WZYvh2Chg0nmg="
"github.com/emersion/go-message v0.9.1 h1:s6HoJ6t+1wHWEs0G/QVR1r5bb6nvx2/b6DuQfknit14="
"github.com/emersion/go-message v0.9.1/go.mod h1:m3cK90skCWxm5sIMs1sXxly4Tn9Plvcf6eayHZJ1NzM="
"github.com/emersion/go-message v0.11.1/go.mod h1:C4jnca5HOTo4bGN9YdqNQM9sITuT3Y0K6bSUw9RklvY="
"github.com/emersion/go-message v0.15.0/go.mod h1:wQUEfE+38+7EW8p8aZ96ptg6bAb1iwdgej19uXASlE4="
"github.com/emersion/go-sasl v0.0.0-20161116183048-7e096a0a6197/go.mod h1:G/dpzLu16WtQpBfQ/z3LYiYJn3ZhKSGWn83fyoyQe/k="
"github.com/emersion/go-sasl v0.0.0-20191210011802-430746ea8b9b/go.mod h1:G/dpzLu16WtQpBfQ/z3LYiYJn3ZhKSGWn83fyoyQe/k="
"github.com/emersion/go-sasl v0.0.0-20200509203442-7bfe0ed36a21 h1:OJyUGMJTzHTd1XQp98QTaHernxMYzRaOasRir9hUlFQ="
"github.com/emersion/go-sasl v0.0.0-20200509203442-7bfe0ed36a21/go.mod h1:iL2twTeMvZnrg54ZoPDNfJaJaqy0xIQFuBdrLsmspwQ="
"github.com/emersion/go-sasl v0.0.0-20211008083017-0b9dcfb154ac h1:tn/OQ2PmwQ0XFVgAHfjlLyqMewry25Rz7jWnVoh4Ggs="
"github.com/emersion/go-sasl v0.0.0-20211008083017-0b9dcfb154ac/go.mod h1:iL2twTeMvZnrg54ZoPDNfJaJaqy0xIQFuBdrLsmspwQ="
"github.com/emersion/go-textwrapper v0.0.0-20160606182133-d0e65e56babe h1:40SWqY0zE3qCi6ZrtTf5OUdNm5lDnGnjRSq9GgmeTrg="
"github.com/emersion/go-textwrapper v0.0.0-20160606182133-d0e65e56babe/go.mod h1:aqO8z8wPrjkscevZJFVE1wXJrLpC5LtJG7fqLOsPb2U="
"github.com/emersion/go-textwrapper v0.0.0-20200911093747-65d896831594/go.mod h1:aqO8z8wPrjkscevZJFVE1wXJrLpC5LtJG7fqLOsPb2U="
"github.com/martinlindhe/base36 v1.0.0/go.mod h1:+AtEs8xrBpCeYgSLoY/aJ6Wf37jtBuR0s35750M27+8="
"github.com/pmezard/go-difflib v1.0.0 h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM="
"github.com/pmezard/go-difflib v1.0.0/go.mod h1:iKH77koFhYxTK1pcRnkKkqfTogsbg7gZNVY4sRDYZ/4="
"github.com/sirupsen/logrus v1.8.1 h1:dJKuHgqk1NNQlqoA6BTlM1Wf9DOH3NBjQyu0h9+AZZE="
"github.com/sirupsen/logrus v1.8.1/go.mod h1:yWOB1SBYBC5VeMP7gHvWumXLIWorT60ONWic61uBYv0="
"github.com/stretchr/objx v0.1.0/go.mod h1:HFkY916IF+rwdDfMAkV7OtwuqBVzrE8GR6GFx+wExME="
"github.com/stretchr/testify v1.2.2/go.mod h1:a8OnRcib4nhh0OaRAV+Yts87kKdq0PP7pXfy6kDkUVs="
"github.com/stretchr/testify v1.3.0/go.mod h1:M5WIy9Dh21IEIfnGCwXGc5bZfKNJtfHm1UVUgZn+9EI="
"github.com/stretchr/testify v1.7.0 h1:nwc3DEeHmmLAfoZucVR881uASk0Mfjw8xYJ99tb5CcY="
"github.com/stretchr/testify v1.7.0/go.mod h1:6Fq8oRcR53rry900zMqJjRRixrwX3KX962/h/Wwjteg="
"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037 h1:YyJpGZS1sBuBCzLAR1VEpK193GlqGZbnPFnPV/5Rsb4="
"golang.org/x/sys v0.0.0-20191026070338-33540a1f6037/go.mod h1:h1NjWce9XRLGQEsW7wpKNCjG9DtNlClVuFLEZdDNbEs="
"golang.org/x/sys v0.0.0-20210927094055-39ccf1dd6fa6 h1:foEbQz/B0Oz6YIqu/69kfXPYeFQAuuMYFkjaqXzl5Wo="
"golang.org/x/sys v0.0.0-20210927094055-39ccf1dd6fa6/go.mod h1:oPkhp1MJrh7nUepCBck5+mAzfO9JrbApNNgaTdGDITg="
"golang.org/x/sys v0.0.0-20211113001501-0c823b97ae02 h1:7NCfEGl0sfUojmX78nK9pBJuUlSZWEJA/TwASvfiPLo="
"golang.org/x/sys v0.0.0-20211113001501-0c823b97ae02/go.mod h1:oPkhp1MJrh7nUepCBck5+mAzfO9JrbApNNgaTdGDITg="
"golang.org/x/text v0.3.0 h1:g61tztE5qeGQ89tm6NTjjM9VPIm088od1l6aSorWRWg="
"golang.org/x/text v0.3.0/go.mod h1:NqM8EUOU14njkJ3fqMW+pc6Ldnwhi/IjpwHt7yyuwOQ="
"golang.org/x/text v0.3.2 h1:tW2bmiBqwgJj/UpqtC8EpXEZVYOwU0yG4iWbprSVAcs="
"golang.org/x/text v0.3.2/go.mod h1:bEr9sfX3Q8Zfm5fL9x+3itogRgK3+ptLWKqgva+5dAk="
"golang.org/x/text v0.3.6/go.mod h1:5Zoc/QRtKVWzQhOtBMvqHzDpF6irO9z98xDceosuGiQ="
"golang.org/x/text v0.3.7 h1:olpwvP2KacW1ZWvsR7uQhoyTYvKAupfQrRGBFM352Gk="
"golang.org/x/text v0.3.7/go.mod h1:u+2+/6zg+i71rQMx5EYifcz6MCKuco9NR6JIITiCfzQ="
"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod h1:n7NCudcB/nEzxVGmLbDWY5pfWTLqBcC2KZ6jyYvM4mQ="
"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405 h1:yhCVgyC4o1eVCa2tZl7eS0r+SDo693bJlVdllGtEeKM="
"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0="
"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod h1:K4uyk7z7BCEPqu6E+C64Yfv1cQ7kz7rIZviUmN+EgEM="
"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b h1:h8qDotaEPuJATrMmW04NCwg7v22aHH28wwpauUhK9Oo="
"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod h1:K4uyk7z7BCEPqu6E+C64Yfv1cQ7kz7rIZviUmN+EgEM="
)
#go-module_set_globals


golang-build_src_compile() {
	debug-print-function ${FUNCNAME} "$@"

	ego_pn_check
	set -- env GOPATH="$EGO_STORE_DIR":"${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		GOCACHE="${T}/go-cache" \
		go build -v -work -x ${EGO_BUILD_FLAGS} "${EGO_PN}"
	echo "$@"
	"$@" || die
}
golang-build_src_install() {
	debug-print-function ${FUNCNAME} "$@"

	ego_pn_check
	set -- env GOPATH="$EGO_STORE_DIR":"${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go install -v -work -x ${EGO_BUILD_FLAGS} "${EGO_PN}"
	echo "$@"
	"$@" || die
	golang_install_pkgs
}

golang-build_src_test() {
	debug-print-function ${FUNCNAME} "$@"

	ego_pn_check
	set -- env GOPATH="$EGO_STORE_DIR":"${WORKDIR}/${P}:$(get_golibdir_gopath)" \
		go test -v -work -x "${EGO_PN}"
	echo "$@"
	"$@" || die
}

golang_install_pkgs() {
	debug-print-function ${FUNCNAME} "$@"

	ego_pn_check

	exeinto /usr/bin
	doexe goimapnotify

	#insinto "$(get_golibdir)"
	#insopts -m0644 -p # preserve timestamps for bug 551486
	#doins -r pkg src
}
