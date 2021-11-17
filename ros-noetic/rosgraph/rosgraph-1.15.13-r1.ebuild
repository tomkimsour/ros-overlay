# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="rosgraph contains the rosgraph command-line tool, which prints\
	informa[...]"
HOMEPAGE="http://wiki.ros.org/rosgraph"
SRC_URI="https://github.com/ros-gbp/ros_comm-release/archive/release/noetic/${PN}/1.15.13-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	dev-python/netifaces
	dev-python/rospkg
	dev-python/pyyaml
	dev-python/netifaces
	dev-python/rospkg
	dev-python/pyyaml
	test? ( dev-python/mock )
	test? ( dev-python/mock )
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"