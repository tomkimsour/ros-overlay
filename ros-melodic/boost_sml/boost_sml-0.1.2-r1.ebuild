# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="State machine library with ros logging"
HOMEPAGE="https://boost-experimental.github.io/sml/"
SRC_URI="https://github.com/PickNikRobotics/${PN}-release/archive/release/melodic/${PN}/0.1.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/roscpp
	ros-melodic/roslint
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/rosunit )
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"