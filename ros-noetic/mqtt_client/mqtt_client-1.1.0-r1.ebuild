# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Provides a nodelet that enables connected ROS-based devices or robots to ex[...]"
HOMEPAGE="http://wiki.ros.org/mqtt_client"
SRC_URI="https://github.com/ika-rwth-aachen/${PN}-release/archive/release/noetic/${PN}/1.1.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/nodelet
	ros-noetic/paho-mqtt-cpp
	ros-noetic/roscpp
	ros-noetic/std_msgs
	ros-noetic/topic_tools
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"