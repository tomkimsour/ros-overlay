# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION=""
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://bitbucket.org/qbrobotics/qbdevice-ros-release/get/release/noetic/${PN}/3.0.5-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="LGPL-2"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/control_msgs
	ros-noetic/hardware_interface
	ros-noetic/joint_limits_interface
	ros-noetic/qb_device_msgs
	ros-noetic/qb_device_srvs
	ros-noetic/roscpp
	ros-noetic/transmission_interface
	ros-noetic/urdf
	test? ( ros-noetic/rostest )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"