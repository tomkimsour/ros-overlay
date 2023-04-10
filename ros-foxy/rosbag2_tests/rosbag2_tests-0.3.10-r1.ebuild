# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Tests package for rosbag2"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rosbag2-release/archive/release/foxy/${PN}/0.3.10-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_index_cpp
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	test? ( ros-foxy/rclcpp )
	test? ( ros-foxy/rcpputils )
	test? ( ros-foxy/ros2bag )
	test? ( ros-foxy/rosbag2_compression )
	test? ( ros-foxy/rosbag2_converter_default_plugins )
	test? ( ros-foxy/rosbag2_cpp )
	test? ( ros-foxy/rosbag2_storage )
	test? ( ros-foxy/rosbag2_storage_default_plugins )
	test? ( ros-foxy/rosbag2_test_common )
	test? ( ros-foxy/std_msgs )
	test? ( ros-foxy/test_msgs )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
