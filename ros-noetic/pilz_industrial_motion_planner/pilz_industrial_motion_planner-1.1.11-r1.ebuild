# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="MoveIt plugin to generate industrial trajectories PTP, LIN, CIRC and sequen[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit-release/archive/release/noetic/${PN}/1.1.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/joint_limits_interface
	ros-noetic/moveit_core
	ros-noetic/moveit_msgs
	ros-noetic/moveit_ros_move_group
	ros-noetic/moveit_ros_planning
	ros-noetic/moveit_ros_planning_interface
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/tf2
	ros-noetic/tf2_eigen
	ros-noetic/tf2_geometry_msgs
	ros-noetic/tf2_kdl
	ros-noetic/tf2_ros
	test? ( ros-noetic/cmake_modules )
	test? ( ros-noetic/code_coverage )
	test? ( ros-noetic/moveit_resources_panda_moveit_config )
	test? ( ros-noetic/moveit_resources_prbt_moveit_config )
	test? ( ros-noetic/moveit_resources_prbt_pg70_support )
	test? ( ros-noetic/moveit_resources_prbt_support )
	test? ( ros-noetic/pilz_industrial_motion_planner_testutils )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/rosunit )
	sci-libs/orocos_kdl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"