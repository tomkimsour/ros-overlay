# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Tools related to the Mobile Robot Programming Toolkit \(MRPT\).\
	Refer [...]"
HOMEPAGE="https://wiki.ros.org/mrpt_navigation"
SRC_URI="https://github.com/mrpt-ros-pkg-release/${PN}-release/archive/release/noetic/${PN}/1.0.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/mrpt_local_obstacles
	ros-noetic/mrpt_localization
	ros-noetic/mrpt_map
	ros-noetic/mrpt_rawlog
	ros-noetic/mrpt_reactivenav2d
	ros-noetic/mrpt_tutorials
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"