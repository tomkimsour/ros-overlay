# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Configuration and launch files of TIAGo\'s controllers"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/pal-gbp/tiago_robot-release/archive/release/humble/${PN}/4.0.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/controller_manager
	ros-humble/diff_drive_controller
	ros-humble/joint_state_broadcaster
	ros-humble/joint_trajectory_controller
	ros-humble/pal_gripper_controller_configuration
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
