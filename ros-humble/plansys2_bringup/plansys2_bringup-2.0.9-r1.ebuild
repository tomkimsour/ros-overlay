# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Bringup scripts and configurations for the ROS2 Planning System"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/IntelligentRoboticsLabs/ros2_planning_system-release/archive/release/humble/${PN}/2.0.9-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/launch_ros
	ros-humble/plansys2_domain_expert
	ros-humble/plansys2_executor
	ros-humble/plansys2_lifecycle_manager
	ros-humble/plansys2_planner
	ros-humble/plansys2_problem_expert
	ros-humble/rclcpp
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
	test? ( ros-humble/launch )
	test? ( ros-humble/launch_testing )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
