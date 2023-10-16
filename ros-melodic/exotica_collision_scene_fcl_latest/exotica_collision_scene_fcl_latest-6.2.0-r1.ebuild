# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Collision checking and distance computation using the latest version of the[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ipab-slmc/exotica-release/archive/release/melodic/${PN}/6.2.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/exotica_core
	ros-melodic/fcl_catkin
	ros-melodic/geometric_shapes
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"