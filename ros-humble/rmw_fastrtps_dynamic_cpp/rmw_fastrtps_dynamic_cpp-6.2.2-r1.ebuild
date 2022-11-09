# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Implement the ROS middleware interface using introspection type support."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmw_fastrtps-release/archive/release/humble/${PN}/6.2.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/fastcdr
	ros-humble/fastrtps
	ros-humble/fastrtps_cmake_module
	ros-humble/rcpputils
	ros-humble/rcutils
	ros-humble/rmw
	ros-humble/rmw_dds_common
	ros-humble/rmw_fastrtps_shared_cpp
	ros-humble/rosidl_runtime_c
	ros-humble/rosidl_typesupport_fastrtps_c
	ros-humble/rosidl_typesupport_fastrtps_cpp
	ros-humble/rosidl_typesupport_introspection_c
	ros-humble/rosidl_typesupport_introspection_cpp
	test? ( ros-humble/ament_cmake_gtest )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/osrf_testing_tools_cpp )
	test? ( ros-humble/test_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
