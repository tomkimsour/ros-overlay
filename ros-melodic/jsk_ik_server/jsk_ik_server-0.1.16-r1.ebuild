# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="jsk_ik_server"
HOMEPAGE="http://ros.org/wiki/jsk_ik_server"
SRC_URI="https://github.com/tork-a/jsk_control-release/archive/release/melodic/${PN}/0.1.16-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/mk
	ros-melodic/moveit_msgs
	ros-melodic/roseus
	ros-melodic/rostest
	ros-melodic/tf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"