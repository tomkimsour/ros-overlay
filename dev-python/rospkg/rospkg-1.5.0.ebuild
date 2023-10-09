EAPI=7
PYTHON_COMPAT=(python3_{9..11})

inherit distutils-r1

DESCRIPTION="ROS package library"
HOMEPAGE="http://wiki.ros.org/rospkg"
SRC_URI="https://github.com/ros-infrastructure/${PN}/archive/refs/tags/${PV}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"

DEPEND="dev-python/setuptools[${PYTHON_USEDEP}]
		dev-python/pyyaml[${PYTHON_USEDEP}]"
RDEPEND="${DEPEND}"
