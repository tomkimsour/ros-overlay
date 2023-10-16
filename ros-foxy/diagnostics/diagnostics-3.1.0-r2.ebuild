# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="diagnostics"
HOMEPAGE="http://www.ros.org/wiki/diagnostics"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/3.1.0-2.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD-3-Clause"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/diagnostic_aggregator
	ros-foxy/diagnostic_common_diagnostics
	ros-foxy/diagnostic_updater
	ros-foxy/self_test
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"