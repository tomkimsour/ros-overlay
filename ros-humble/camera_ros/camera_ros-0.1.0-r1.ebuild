# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="node for libcamera supported cameras \(V4L2, Raspberry Pi Camera Modules\)"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/0.1.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/camera_info_manager
	ros-humble/cv_bridge
	ros-humble/libcamera
	ros-humble/rclcpp_components
	ros-humble/sensor_msgs
	test? ( ros-humble/ament_cmake_clang_format )
	test? ( ros-humble/ament_cmake_cppcheck )
	test? ( ros-humble/ament_lint_auto )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
