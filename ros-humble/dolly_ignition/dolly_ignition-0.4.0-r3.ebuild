# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Launch Ignition simulation with Dolly robot."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/dolly-release/archive/release/humble/${PN}/0.4.0-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/dolly_follow
	ros-humble/ros2launch
	ros-humble/ros_ign_bridge
	ros-humble/ros_ign_gazebo
	ros-humble/rviz2
	test? ( ros-humble/ament_lint_auto )
	test? ( ros-humble/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
