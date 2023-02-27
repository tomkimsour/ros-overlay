# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Libraries and utilities for embedded and low-level linux development."
HOMEPAGE="http://www.ros.org/wiki/ecl_lite"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/galactic/${PN}/1.1.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ecl_config
	ros-galactic/ecl_converters_lite
	ros-galactic/ecl_errors
	ros-galactic/ecl_io
	ros-galactic/ecl_sigslots_lite
	ros-galactic/ecl_time_lite
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
