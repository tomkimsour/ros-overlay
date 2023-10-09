EAPI=7
PYTHON_COMPAT=(python3_{9..11})

inherit distutils-r1

DESCRIPTION="A tool for generating rosinstall files."
HOMEPAGE="http://wiki.ros.org/rosinstall_generator"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE=""

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]
		dev-python/rospkg[${PYTHON_USEDEP}]
		dev-python/rosdistro[${PYTHON_USEDEP}]
		>=dev-python/catkin_pkg-0.1.28[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
