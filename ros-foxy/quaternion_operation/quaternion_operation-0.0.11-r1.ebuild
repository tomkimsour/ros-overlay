# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The quaternion_operation package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OUXT-Polaris/${PN}-release/archive/release/foxy/${PN}/0.0.11-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_cmake_auto
	ros-foxy/geometry_msgs
	ros-foxy/rclcpp
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ouxt_lint_common )
	dev-cpp/eigen
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
