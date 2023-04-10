# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="AutoRace ROS packages for AutoRace with TurtleBot3 \(meta package\)"
HOMEPAGE="http://wiki.ros.org/turtlebot3_autorace"
SRC_URI="https://github.com/ROBOTIS-GIT-release/${PN}-release/archive/release/melodic/${PN}/1.2.0-0.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/turtlebot3_autorace_camera
	ros-melodic/turtlebot3_autorace_control
	ros-melodic/turtlebot3_autorace_core
	ros-melodic/turtlebot3_autorace_detect
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
