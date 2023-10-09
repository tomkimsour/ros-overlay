EAPI=8
PYTHON_COMPAT=(python3_{9..11})

inherit distutils-r1

DESCRIPTION="The installer for ROS"
HOMEPAGE="http://wiki.ros.org/rosinstall"
SRC_URI="https://github.com/vcstools/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/catkin_pkg[${PYTHON_USEDEP}]
		>=dev-python/vcstools-0.1.30[${PYTHON_USEDEP}]
		>=dev-python/rosdistro-0.3.0[${PYTHON_USEDEP}]
		>=dev-python/wstool-0.1.0[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
