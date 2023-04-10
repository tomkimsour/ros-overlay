# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Shared communication types for the concert framework."
HOMEPAGE="http://www.ros.org/wiki/concert_msgs"
SRC_URI="https://github.com/yujinrobot-release/rocon_msgs-release/archive/release/melodic/${PN}/0.9.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/gateway_msgs
	ros-melodic/message_runtime
	ros-melodic/rocon_app_manager_msgs
	ros-melodic/rocon_std_msgs
	ros-melodic/std_msgs
	ros-melodic/uuid_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
