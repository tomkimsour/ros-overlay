# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Launch files and code for autonomous navigation of the Jackal"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/clearpath-gbp/jackal-release/archive/release/noetic/${PN}/0.8.6-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/amcl
	ros-noetic/gmapping
	ros-noetic/map_server
	ros-noetic/move_base
	ros-noetic/urdf
	ros-noetic/xacro
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	ros-noetic/roslaunch
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"