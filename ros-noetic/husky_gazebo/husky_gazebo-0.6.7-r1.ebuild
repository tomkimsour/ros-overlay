# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Clearpath Husky Simulator bringup"
HOMEPAGE="http://ros.org/wiki/husky_gazebo"
SRC_URI="https://github.com/clearpath-gbp/husky-release/archive/release/noetic/${PN}/0.6.7-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/controller_manager
	ros-noetic/gazebo_plugins
	ros-noetic/gazebo_ros
	ros-noetic/gazebo_ros_control
	ros-noetic/hector_gazebo_plugins
	ros-noetic/husky_control
	ros-noetic/husky_description
	ros-noetic/pointcloud_to_laserscan
	ros-noetic/rostopic
	ros-noetic/velodyne_gazebo_plugins
	test? ( ros-noetic/roslaunch )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"