# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="TODO"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/SteveMacenski/navigation2-release/archive/release/humble/${PN}/1.1.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/behaviortree_cpp_v3
	ros-humble/builtin_interfaces
	ros-humble/geometry_msgs
	ros-humble/lifecycle_msgs
	ros-humble/nav2_msgs
	ros-humble/nav2_util
	ros-humble/nav_msgs
	ros-humble/rclcpp
	ros-humble/rclcpp_action
	ros-humble/rclcpp_lifecycle
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/std_srvs
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_ros
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/test_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/nav2_common
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
