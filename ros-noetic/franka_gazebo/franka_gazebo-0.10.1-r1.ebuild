# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package offers the FrankaHWSim Class to simulate a Franka Robot in Gazebo"
HOMEPAGE="http://wiki.ros.org/franka_gazebo"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/noetic/${PN}/0.10.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/angles
	ros-noetic/boost_sml
	ros-noetic/control_msgs
	ros-noetic/control_toolbox
	ros-noetic/controller_interface
	ros-noetic/controller_manager
	ros-noetic/eigen_conversions
	ros-noetic/franka_example_controllers
	ros-noetic/franka_gripper
	ros-noetic/franka_hw
	ros-noetic/franka_msgs
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/kdl_parser
	ros-noetic/pluginlib
	ros-noetic/roscpp
	ros-noetic/roslaunch
	ros-noetic/rospy
	ros-noetic/std_msgs
	ros-noetic/transmission_interface
	ros-noetic/urdf
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/sensor_msgs )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/gazebo_dev
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"