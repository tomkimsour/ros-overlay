EAPI=7
PYTHON_COMPAT=(python3_{9..11})

inherit distutils-r1

DESCRIPTION="A tool to work with rosdistro files"
HOMEPAGE="http://wiki.ros.org/rosdistro"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/catkin_pkg[${PYTHON_USEDEP}]
		dev-python/rospkg[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
