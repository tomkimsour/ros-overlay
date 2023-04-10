# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Meta-package for lanelet2"
HOMEPAGE="https://github.com/fzi-forschungszentrum-informatik/lanelet2.git"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.1.1-4.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/lanelet2_core
	ros-humble/lanelet2_examples
	ros-humble/lanelet2_io
	ros-humble/lanelet2_maps
	ros-humble/lanelet2_projection
	ros-humble/lanelet2_python
	ros-humble/lanelet2_routing
	ros-humble/lanelet2_traffic_rules
	ros-humble/lanelet2_validation
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_core
	ros-humble/ros_environment
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
