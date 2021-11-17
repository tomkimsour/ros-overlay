# Copyright 2021 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=7
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Provides an extensible and standardised framework for input-output devices."
HOMEPAGE="http://wiki.ros.org/ecl_devices"
SRC_URI="https://github.com/yujinrobot-release/ecl_core-release/archive/release/noetic/${PN}/0.62.3-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/ecl_config
	ros-noetic/ecl_containers
	ros-noetic/ecl_errors
	ros-noetic/ecl_license
	ros-noetic/ecl_mpl
	ros-noetic/ecl_threads
	ros-noetic/ecl_type_traits
	ros-noetic/ecl_utilities
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
