# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The prbt_ikfast_manipulator_plugin package"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/moveit/moveit2-release/archive/release/humble/${PN}/2.5.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/moveit_core
	ros-humble/pluginlib
	ros-humble/rclcpp
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_kdl
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/tf2_eigen
	ros-humble/tf2_eigen_kdl
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
