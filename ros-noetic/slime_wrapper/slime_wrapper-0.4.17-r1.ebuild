# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS wrapper for slime"
HOMEPAGE="http://common-lisp.net/project/slime"
SRC_URI="https://github.com/code-iai-release/ros_emacs_utils-release/archive/release/noetic/${PN}/0.4.17-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="PD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	virtual/emacs
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"