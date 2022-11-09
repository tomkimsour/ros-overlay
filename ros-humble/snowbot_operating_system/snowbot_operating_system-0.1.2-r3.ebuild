# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="The weather outside is frightful"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/snowbot_release/archive/release/humble/${PN}/0.1.2-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_cmake_ros
	ros-humble/geometry_msgs
	ros-humble/pluginlib
	ros-humble/rviz_common
	ros-humble/rviz_rendering
	test? ( ros-humble/ament_cmake_clang_format )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
