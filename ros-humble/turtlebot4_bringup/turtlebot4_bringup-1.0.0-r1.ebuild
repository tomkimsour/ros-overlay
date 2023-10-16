# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Turtlebot4 Robot Bringup"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/turtlebot4_robot-release/archive/release/humble/${PN}/1.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/depthai_bridge
	ros-humble/depthai_examples
	ros-humble/depthai_ros_driver
	ros-humble/depthai_ros_msgs
	ros-humble/joy_linux
	ros-humble/nav2_common
	ros-humble/rplidar_ros
	ros-humble/teleop_twist_joy
	ros-humble/tf2_ros
	ros-humble/turtlebot4_description
	ros-humble/turtlebot4_diagnostics
	ros-humble/turtlebot4_node
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"