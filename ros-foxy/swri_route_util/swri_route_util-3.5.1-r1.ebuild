# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="This library provides functionality to simplify working with the\
	navig[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/foxy/${PN}/3.5.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/marti_common_msgs
	ros-foxy/marti_nav_msgs
	ros-foxy/rclcpp
	ros-foxy/swri_geometry_util
	ros-foxy/swri_math_util
	ros-foxy/swri_roscpp
	ros-foxy/swri_transform_util
	ros-foxy/tf2_geometry_msgs
	ros-foxy/visualization_msgs
	dev-libs/boost[python]
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
