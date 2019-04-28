# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Wrapper around console_bridge, providing nothing but a dependency on consol[...]"
HOMEPAGE="https://github.com/ros/console_bridge"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/dashing/${PN}/1.2.0-1.tar.gz -> ${PN}-dashing-release-${PV}.tar.gz"

LICENSE="( Apache-2.0 BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	dev-libs/console_bridge
"
DEPEND="${RDEPEND}
	ros-dashing/ament_cmake
"

SLOT="0"
ROS_DISTRO="dashing"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
