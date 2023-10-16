# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS node for rpi_ws281x LED strip driver"
HOMEPAGE="https://github.com/CopterExpress/ros_led"
SRC_URI="https://github.com/CopterExpress/ros_led-release/archive/release/melodic/${PN}/0.0.11-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( MIT BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/led_msgs
	ros-melodic/message_generation
	ros-melodic/roscpp
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/ros_environment
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"