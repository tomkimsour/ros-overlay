# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package contains visualization tools for Franka Emika."
HOMEPAGE="http://wiki.ros.org/franka_visualization"
SRC_URI="https://github.com/frankaemika/franka_ros-release/archive/release/melodic/${PN}/0.10.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/franka_description
	ros-melodic/libfranka
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
