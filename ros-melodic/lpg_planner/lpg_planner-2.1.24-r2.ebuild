# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="lpg_planner: LPGL Planner \(http://zeus.ing.unibs.it/lpg/\)"
HOMEPAGE="http://ros.org/wiki/lpg_planner"
SRC_URI="https://github.com/tork-a/jsk_3rdparty-release/archive/release/melodic/${PN}/2.1.24-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="GPL"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
