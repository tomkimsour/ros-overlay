# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The cob_footprint_observer package adjusts the footprint of the robot based[...]"
HOMEPAGE="http://ros.org/wiki/cob_footprint_observer"
SRC_URI="https://github.com/ipa320/cob_control-release/archive/release/melodic/${PN}/0.8.12-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/roscpp
	ros-melodic/std_msgs
	ros-melodic/tf
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
