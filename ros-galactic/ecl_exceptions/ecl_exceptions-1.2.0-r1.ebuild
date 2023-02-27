# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Template based exceptions - these are simple and practical\
	 and avoid [...]"
HOMEPAGE="http://wiki.ros.org/ecl_exceptions"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/galactic/${PN}/1.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ecl_config
	ros-galactic/ecl_errors
	ros-galactic/ecl_license
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
	ros-galactic/ecl_build
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
