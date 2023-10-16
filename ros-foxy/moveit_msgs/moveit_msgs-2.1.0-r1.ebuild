# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Messages, services and actions used by MoveIt"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/${PN}-release/archive/release/foxy/${PN}/2.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/action_msgs
	ros-foxy/geometry_msgs
	ros-foxy/object_recognition_msgs
	ros-foxy/octomap_msgs
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	ros-foxy/shape_msgs
	ros-foxy/std_msgs
	ros-foxy/trajectory_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_cmake )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"