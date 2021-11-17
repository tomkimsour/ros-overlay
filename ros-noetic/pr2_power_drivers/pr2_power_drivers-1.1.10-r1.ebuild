# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Power drivers for the PR2 robot."
HOMEPAGE="http://ros.org/wiki/pr2_power_drivers"
SRC_URI="https://github.com/pr2-gbp/${PN}-release/archive/release/noetic/${PN}/1.1.10-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ocean_battery_driver
	ros-noetic/power_monitor
	ros-noetic/pr2_power_board
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
