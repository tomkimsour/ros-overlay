# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Provides small examples for use of the fmi_adapter package"
HOMEPAGE="http://wiki.ros.org/fmi_adapter"
SRC_URI="https://github.com/ros2-gbp/fmi_adapter-release/archive/release/foxy/${PN}/2.1.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/fmi_adapter
	ros-foxy/launch
	ros-foxy/launch_ros
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"