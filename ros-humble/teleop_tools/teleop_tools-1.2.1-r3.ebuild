# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A set of generic teleoperation tools for any robot."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.2.1-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/joy_teleop
	ros-humble/key_teleop
	ros-humble/teleop_tools_msgs
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
