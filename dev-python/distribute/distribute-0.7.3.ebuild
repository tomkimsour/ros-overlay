EAPI=7
PYTHON_COMPAT=(python3_{9..11})

inherit distutils-r1

DESCRIPTION="distribute legacy wrapper"
HOMEPAGE="https://pypi.org/project/distribute"
#Hacky way but the host of the project is down
SRC_URI="https://files.pythonhosted.org/packages/5f/ad/1fde06877a8d7d5c9b60eff7de2d452f639916ae1d48f0b8f97bf97e570a/distribute-0.7.3.zip"

LICENSE="|| ( PSF ZPL )"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

DEPEND=">=dev-python/setuptools-0.7[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
