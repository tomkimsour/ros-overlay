# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="A runtime message handler for ROS.\
	Allows subscription, publishing, ca[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/StefanFabian/${PN}-release/archive/release/noetic/${PN}/0.9.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/roscpp
	ros-noetic/roslib
	test? ( ros-noetic/geometry_msgs )
	test? ( ros-noetic/ros_babel_fish_test_msgs )
	test? ( ros-noetic/rosapi )
	test? ( ros-noetic/roscpp_tutorials )
	test? ( ros-noetic/rosgraph_msgs )
	test? ( ros-noetic/rostest )
	test? ( ros-noetic/std_msgs )
	test? ( ros-noetic/std_srvs )
	test? ( ros-noetic/visualization_msgs )
	dev-libs/openssl
	dev-libs/openssl
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"