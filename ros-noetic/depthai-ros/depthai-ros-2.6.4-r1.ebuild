# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The depthai-ros package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/luxonis/${PN}-release/archive/release/noetic/${PN}/2.6.4-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/depthai
	ros-noetic/depthai_bridge
	ros-noetic/depthai_examples
	ros-noetic/depthai_ros_driver
	ros-noetic/depthai_ros_msgs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"