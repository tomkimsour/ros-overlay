# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The roomba_stage package"
HOMEPAGE="http://ros.org/wiki/roomba_stage"
SRC_URI="https://github.com/ros-gbp/navigation_tutorials-release/archive/release/melodic/${PN}/0.2.4-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/fake_localization
	ros-melodic/map_server
	ros-melodic/move_base
	ros-melodic/stage_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
