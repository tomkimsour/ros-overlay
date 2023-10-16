# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Catkinized gRPC Package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/CogRobRelease/catkin_${PN}-release/archive/release/noetic/${PN}/0.0.11-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	net-misc/rsync
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
	sys-devel/autoconf
	dev-vcs/git
	sys-devel/libtool
	sys-libs/zlib
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"