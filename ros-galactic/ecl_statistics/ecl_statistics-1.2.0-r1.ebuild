# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Common statistical structures and algorithms for control systems."
HOMEPAGE="http://wiki.ros.org/ecl_statistics"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/galactic/${PN}/1.2.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/ecl_build
	ros-galactic/ecl_config
	ros-galactic/ecl_license
	ros-galactic/ecl_linear_algebra
	ros-galactic/ecl_mpl
	ros-galactic/ecl_type_traits
	test? ( ros-galactic/ament_cmake_gtest )
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
