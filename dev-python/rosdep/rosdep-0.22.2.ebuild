EAPI=8
PYTHON_COMPAT=(python3_{9..11})

inherit distutils-r1

DESCRIPTION="Package manager for ROS."
HOMEPAGE="http://wiki.ros.org/rosdep"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		>=dev-python/nose-1.0[${PYTHON_USEDEP}]
		>=dev-python/pyyaml-3.1[${PYTHON_USEDEP}]
		>=dev-python/rosdistro-0.3.0[${PYTHON_USEDEP}]
		dev-python/catkin_pkg[${PYTHON_USEDEP}]
		dev-python/rospkg[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"

# @todo tests
