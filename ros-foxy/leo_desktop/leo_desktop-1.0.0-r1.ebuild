# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Metapackage of software for operating Leo Rover from ROS desktop"
HOMEPAGE="http://wiki.ros.org/leo_desktop"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/leo
	ros-foxy/leo_viz
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"