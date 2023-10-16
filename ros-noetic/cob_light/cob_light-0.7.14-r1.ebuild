# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains scripts to operate the LED lights on Care-O-bot."
HOMEPAGE="http://ros.org/wiki/cob_light"
SRC_URI="https://github.com/ipa320/cob_driver-release/archive/release/noetic/${PN}/0.7.14-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/diagnostic_msgs
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/visualization_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/message_generation
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"