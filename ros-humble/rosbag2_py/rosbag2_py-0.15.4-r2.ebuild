# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Python API for rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/humble/${PN}/0.15.4-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/pybind11_vendor
	ros-humble/rosbag2_compression
	ros-humble/rosbag2_cpp
	ros-humble/rosbag2_storage
	ros-humble/rosbag2_transport
	ros-humble/rpyutils
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/rcl_interfaces )
	test? ( ros-humble/rclpy )
	test? ( ros-humble/rosbag2_storage_default_plugins )
	test? ( ros-humble/rosidl_runtime_py )
	test? ( ros-humble/std_msgs )
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake_python
	ros-humble/ament_cmake_ros
	ros-humble/python_cmake_module
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
