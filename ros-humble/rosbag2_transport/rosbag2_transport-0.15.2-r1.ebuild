# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Layer encapsulating ROS middleware to allow rosbag2 to be used with or with[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/${PN}/0.15.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/keyboard_handler
	ros-humble/rclcpp
	ros-humble/rmw
	ros-humble/rosbag2_compression
	ros-humble/rosbag2_cpp
	ros-humble/rosbag2_interfaces
	ros-humble/rosbag2_storage
	ros-humble/shared_queues_vendor
	ros-humble/yaml_cpp_vendor
	test? ( ros-humble/ament_cmake_gmock )
	test? ( ros-humble/ament_index_cpp )
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/rmw_implementation_cmake )
	test? ( ros-humble/rosbag2_compression_zstd )
	test? ( ros-humble/rosbag2_test_common )
	test? ( ros-humble/test_msgs )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_ros
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
