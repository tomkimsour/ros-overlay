# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="Capture keyboard input from the local computer and publish it to ROS"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/RoverRobotics/ros2-${PN}-release/archive/release/crystal/${PN}/0.1.1-5.tar.gz -> ${PN}-crystal-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-crystal/rclpy
	ros-crystal/std_msgs
	test? ( ros-crystal/ament_lint_auto )
	test? ( ros-crystal/ament_lint_common )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="crystal"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"