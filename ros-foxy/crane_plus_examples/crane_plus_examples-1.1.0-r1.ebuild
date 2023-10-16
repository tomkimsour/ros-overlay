# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="CRANE+ V2 examples package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/crane_plus-release/archive/release/foxy/${PN}/1.1.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/crane_plus_control
	ros-foxy/crane_plus_description
	ros-foxy/crane_plus_moveit_config
	ros-foxy/geometry_msgs
	ros-foxy/moveit_ros_planning_interface
	ros-foxy/rclcpp
	ros-foxy/tf2_geometry_msgs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"