# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Streaming of OptiTrack mocap data to tf\
	<p>\
	This package contains[...]"
HOMEPAGE="http://ros.org/wiki/mocap_optitrack"
SRC_URI="https://github.com/ros-drivers-gbp/${PN}-release/archive/release/melodic/${PN}/0.1.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/nav_msgs
	ros-melodic/roscpp
	ros-melodic/tf
	test? ( ros-melodic/roslaunch )
	test? ( ros-melodic/roslint )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"