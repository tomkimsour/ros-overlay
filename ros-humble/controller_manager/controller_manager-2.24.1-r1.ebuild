# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Description of controller_manager"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_control-release/archive/release/humble/${PN}/2.24.1-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ament_index_cpp
	ros-humble/backward_ros
	ros-humble/controller_interface
	ros-humble/controller_manager_msgs
	ros-humble/diagnostic_updater
	ros-humble/hardware_interface
	ros-humble/launch
	ros-humble/launch_ros
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/rcpputils
	ros-humble/realtime_tools
	ros-humble/ros2_control_test_assets
	ros-humble/ros2param
	ros-humble/ros2run
	test? ( ros-humble/ament_cmake_gmock )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"