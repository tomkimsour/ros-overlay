# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ros_control controller manager interface for MoveIt"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/humble/${PN}/2.5.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/controller_manager_msgs
	ros-humble/moveit_common
	ros-humble/moveit_core
	ros-humble/moveit_simple_controller_manager
	ros-humble/pluginlib
	ros-humble/rclcpp_action
	ros-humble/trajectory_msgs
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
