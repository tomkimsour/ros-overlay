# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Controller to publish joint state"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/ros2_controllers-release/archive/release/foxy/${PN}/0.9.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/joint_state_broadcaster
	test? ( ros-foxy/ament_cmake_gmock )
	test? ( ros-foxy/controller_manager )
	test? ( ros-foxy/hardware_interface )
	test? ( ros-foxy/rclcpp )
	test? ( ros-foxy/ros2_control_test_assets )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
	ros-foxy/pluginlib
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
