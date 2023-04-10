# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS device driver for the Vedder VESC open source motor driver."
HOMEPAGE="http://www.ros.org/wiki/vesc_driver"
SRC_URI="https://github.com/f1tenth/vesc-release/archive/release/melodic/${PN}/1.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/nodelet
	ros-melodic/pluginlib
	ros-melodic/roscpp
	ros-melodic/serial
	ros-melodic/std_msgs
	ros-melodic/vesc_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/roslint
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
