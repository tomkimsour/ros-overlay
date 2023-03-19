# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="octomap_ros provides conversion functions between ROS and OctoMap\'s native[...]"
HOMEPAGE="http://ros.org/wiki/octomap_ros"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.4.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/octomap
	ros-humble/octomap_msgs
	ros-humble/sensor_msgs
	ros-humble/tf2
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
