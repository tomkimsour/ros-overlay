# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ign_ros2_control_demos"
HOMEPAGE="https://github.com/ros-controls/gz_ros2_control/blob/master/README.md"
SRC_URI="https://github.com/ros2-gbp/ign_ros2_control-release/archive/release/foxy/${PN}/0.1.5-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_python
	ros-foxy/control_msgs
	ros-foxy/diff_drive_controller
	ros-foxy/effort_controllers
	ros-foxy/geometry_msgs
	ros-foxy/hardware_interface
	ros-foxy/ign_ros2_control
	ros-foxy/imu_sensor_broadcaster
	ros-foxy/joint_state_controller
	ros-foxy/joint_trajectory_controller
	ros-foxy/launch
	ros-foxy/launch_ros
	ros-foxy/rclcpp
	ros-foxy/robot_state_publisher
	ros-foxy/ros2controlcli
	ros-foxy/ros_ign_gazebo
	ros-foxy/std_msgs
	ros-foxy/velocity_controllers
	ros-foxy/xacro
	test? ( ros-foxy/ament_cmake_gtest )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rclcpp_action
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
