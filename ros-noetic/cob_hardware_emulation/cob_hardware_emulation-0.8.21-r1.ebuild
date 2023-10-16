# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_hardware_emulation package provides idealized nodes emulating real [...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/noetic/${PN}/0.8.21-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/actionlib_msgs
	ros-noetic/control_msgs
	ros-noetic/move_base_msgs
	ros-noetic/nav_msgs
	ros-noetic/roscpp
	ros-noetic/rosgraph_msgs
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	ros-noetic/std_srvs
	ros-noetic/tf2_ros
	ros-noetic/tf_conversions
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"