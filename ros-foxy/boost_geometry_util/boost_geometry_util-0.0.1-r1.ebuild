# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Utility library for boost geometry"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/OUXT-Polaris/${PN}-release/archive/release/foxy/${PN}/0.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/rclcpp
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ouxt_common )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"