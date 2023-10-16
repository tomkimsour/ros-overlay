# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The naoqi_bridge_msgs package provides custom messages for running Aldebara[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-naoqi/${PN}-release/archive/release/noetic/${PN}/0.0.9-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib_msgs
	ros-noetic/genmsg
	ros-noetic/geometry_msgs
	ros-noetic/message_runtime
	ros-noetic/nav_msgs
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"