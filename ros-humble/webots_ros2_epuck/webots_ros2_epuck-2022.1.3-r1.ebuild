# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="E-puck2 driver for Webots simulated robot"
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/${PN}/2022.1.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/builtin_interfaces
	ros-humble/controller_manager
	ros-humble/diff_drive_controller
	ros-humble/geometry_msgs
	ros-humble/joint_state_broadcaster
	ros-humble/nav_msgs
	ros-humble/rclpy
	ros-humble/robot_state_publisher
	ros-humble/rviz2
	ros-humble/sensor_msgs
	ros-humble/std_msgs
	ros-humble/tf2_ros
	ros-humble/webots_ros2_control
	ros-humble/webots_ros2_driver
	ros-humble/webots_ros2_msgs
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
