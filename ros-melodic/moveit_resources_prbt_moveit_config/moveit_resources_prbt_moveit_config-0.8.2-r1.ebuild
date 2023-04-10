# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	  MoveIt Resources for testing: Pilz PRBT 6\
	</p>\
	<p>\
\	[...]"
HOMEPAGE="http://moveit.ros.org"
SRC_URI="https://github.com/ros-gbp/moveit_resources-release/archive/release/melodic/${PN}/0.8.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joint_state_publisher
	ros-melodic/moveit_resources_prbt_ikfast_manipulator_plugin
	ros-melodic/moveit_resources_prbt_support
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/xacro
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
