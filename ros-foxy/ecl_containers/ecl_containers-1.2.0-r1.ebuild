# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The containers included here are intended to extend the stl containers.\
  [...]"
HOMEPAGE="http://wiki.ros.org/ecl_containers"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/foxy/${PN}/1.2.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ecl_config
	ros-foxy/ecl_converters
	ros-foxy/ecl_errors
	ros-foxy/ecl_exceptions
	ros-foxy/ecl_formatters
	ros-foxy/ecl_license
	ros-foxy/ecl_mpl
	ros-foxy/ecl_type_traits
	ros-foxy/ecl_utilities
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_ros
	ros-foxy/ecl_build
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
