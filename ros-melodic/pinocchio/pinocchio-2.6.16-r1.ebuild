# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A fast and flexible implementation of Rigid Body Dynamics algorithms and th[...]"
HOMEPAGE="https://github.com/stack-of-tasks/pinocchio"
SRC_URI="https://github.com/stack-of-tasks/${PN}-ros-release/archive/release/melodic/${PN}/2.6.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/catkin
	ros-melodic/eigenpy
	ros-melodic/hpp-fcl
	dev-libs/boost[python]
	dev-cpp/eigen
	dev-libs/urdfdom
	dev-lang/python
	dev-python/numpy
"
DEPEND="${RDEPEND}
	sys-devel/clang
	dev-util/cmake
	app-doc/doxygen
	dev-vcs/git
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"