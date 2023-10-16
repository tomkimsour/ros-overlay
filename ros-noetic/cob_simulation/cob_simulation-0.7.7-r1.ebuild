# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_simulation stack includes packages to work with Care-O-bot within s[...]"
HOMEPAGE="http://ros.org/wiki/cob_simulation"
SRC_URI="https://github.com/ipa320/${PN}-release/archive/release/noetic/${PN}/0.7.7-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cob_bringup_sim
	ros-noetic/cob_gazebo
	ros-noetic/cob_gazebo_objects
	ros-noetic/cob_gazebo_tools
	ros-noetic/cob_gazebo_worlds
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"