# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="depthimage_to_laserscan"
HOMEPAGE="http://ros.org/wiki/depthimage_to_laserscan"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/2.5.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/image_geometry
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/sensor_msgs
	test? ( ros-humble/ament_cmake_gtest )
	media-libs/opencv
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
