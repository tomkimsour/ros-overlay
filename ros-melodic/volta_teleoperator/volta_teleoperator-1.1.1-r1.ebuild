# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The volta_teleoperator package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/botsync-gbp/volta-release/archive/release/melodic/${PN}/1.1.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/actionlib_msgs
	ros-melodic/geometry_msgs
	ros-melodic/sensor_msgs
	ros-melodic/teleop_twist_joy
	ros-melodic/teleop_twist_keyboard
	ros-melodic/volta_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
