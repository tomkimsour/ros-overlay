# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Model files of OpenNI device."
HOMEPAGE="http://www.ros.org/wiki/openni_description"
SRC_URI="https://github.com/ros-gbp/openni_camera-release/archive/release/noetic/${PN}/1.11.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/urdf
	ros-noetic/xacro
	test? ( ros-noetic/rostest )
	test? ( dev-libs/urdfdom )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"