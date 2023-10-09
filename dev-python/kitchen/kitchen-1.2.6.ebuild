EAPI=7
PYTHON_COMPAT=(python3_{9..11})

inherit distutils-r1

DESCRIPTION="Kitchen contains a cornucopia of useful code"
HOMEPAGE="https://github.com/fedora-infra/kitchen"
SRC_URI="https://github.com/fedora-infra/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="LGPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
