# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Libraries and utilities for embedded and low-level linux development."
HOMEPAGE="http://www.ros.org/wiki/ecl_lite"
SRC_URI="https://github.com/yujinrobot-release/${PN}-release/archive/release/foxy/${PN}/1.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/ecl_config
	ros-foxy/ecl_converters_lite
	ros-foxy/ecl_errors
	ros-foxy/ecl_io
	ros-foxy/ecl_sigslots_lite
	ros-foxy/ecl_time_lite
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"