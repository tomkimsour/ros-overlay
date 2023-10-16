# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS packages to use Mia Hand with ROS tools and ROS control."
HOMEPAGE="https://wiki.ros.org/mia_hand_ros_pkgs"
SRC_URI="https://github.com/Prensilia-srl/${PN}-release/archive/release/noetic/${PN}/1.0.2-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/mia_hand_bringup
	ros-noetic/mia_hand_description
	ros-noetic/mia_hand_driver
	ros-noetic/mia_hand_gazebo
	ros-noetic/mia_hand_moveit_config
	ros-noetic/mia_hand_msgs
	ros-noetic/mia_hand_ros_control
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"