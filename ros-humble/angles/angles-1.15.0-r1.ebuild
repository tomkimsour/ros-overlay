# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This package provides a set of simple math utilities to work\
		with [...]"
HOMEPAGE="http://wiki.ros.org/angles"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.15.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
	dev-python/setuptools
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
