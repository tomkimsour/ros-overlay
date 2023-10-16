# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="ROS messages for MRPT classes and objects"
HOMEPAGE="https://wiki.ros.org/mrpt_msgs"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/0.4.4-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/rosidl_default_runtime
	ros-foxy/sensor_msgs
	ros-foxy/std_msgs
	test? ( ros-foxy/ament_cppcheck )
	test? ( ros-foxy/ament_cpplint )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_cmake )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/ros_environment
	ros-foxy/rosidl_default_generators
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"