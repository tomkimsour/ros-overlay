# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The nmea_msgs package contains messages related to data in the NMEA format."
HOMEPAGE="http://ros.org/wiki/nmea_msgs"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/2.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/rosidl_default_runtime
	ros-foxy/std_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
