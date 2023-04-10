# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Message and service definitions used in internal tests for rosbridge packages."
HOMEPAGE="http://ros.org/wiki/rosbridge_library"
SRC_URI="https://github.com/ros2-gbp/rosbridge_suite-release/archive/release/foxy/${PN}/1.3.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/geometry_msgs
	ros-foxy/rclpy
	ros-foxy/rosidl_default_runtime
	ros-foxy/std_msgs
	test? ( ros-foxy/actionlib_msgs )
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/builtin_interfaces )
	test? ( ros-foxy/diagnostic_msgs )
	test? ( ros-foxy/example_interfaces )
	test? ( ros-foxy/geometry_msgs )
	test? ( ros-foxy/nav_msgs )
	test? ( ros-foxy/sensor_msgs )
	test? ( ros-foxy/std_msgs )
	test? ( ros-foxy/std_srvs )
	test? ( ros-foxy/stereo_msgs )
	test? ( ros-foxy/tf2_msgs )
	test? ( ros-foxy/trajectory_msgs )
	test? ( ros-foxy/visualization_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/rosidl_default_generators
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
