# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Hierarchical task solver plug-in for dynamic-graph"
HOMEPAGE="http://stack-of-tasks.github.io"
SRC_URI="https://github.com/stack-of-tasks/${PN}-ros-release/archive/release/melodic/${PN}/4.11.8-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/dynamic-graph
	ros-melodic/dynamic-graph-python
	ros-melodic/pinocchio
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	dev-util/cmake
	app-doc/doxygen
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"