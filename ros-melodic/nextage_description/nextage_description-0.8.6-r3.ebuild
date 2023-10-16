# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="As a part of rtmros_nextage package that is a ROS interface for <a href=\"h[...]"
HOMEPAGE="http://ros.org/wiki/nextage_description"
SRC_URI="https://github.com/tork-a/rtmros_nextage-release/archive/release/melodic/${PN}/0.8.6-3.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/urdf
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"