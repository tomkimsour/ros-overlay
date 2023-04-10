# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Implementation of admittance controllers for different input and output int[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_controllers-release/archive/release/humble/${PN}/2.17.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/backward_ros
	ros-humble/control_msgs
	ros-humble/control_toolbox
	ros-humble/controller_interface
	ros-humble/filters
	ros-humble/generate_parameter_library
	ros-humble/geometry_msgs
	ros-humble/hardware_interface
	ros-humble/joint_trajectory_controller
	ros-humble/kinematics_interface
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rclcpp_lifecycle
	ros-humble/realtime_tools
	ros-humble/tf2
	ros-humble/tf2_eigen
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_kdl
	ros-humble/tf2_ros
	ros-humble/trajectory_msgs
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/control_msgs )
	test? ( ros-humble/controller_manager )
	test? ( ros-humble/hardware_interface )
	test? ( ros-humble/kinematics_interface_kdl )
	test? ( ros-humble/ros2_control_test_assets )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
