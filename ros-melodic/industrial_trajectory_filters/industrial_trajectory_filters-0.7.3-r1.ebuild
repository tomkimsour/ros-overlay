# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="<p>\
	 ROS Industrial libraries/plugins for filtering trajectories.\
   [...]"
HOMEPAGE="http://ros.org/wiki/industrial_trajectory_filters"
SRC_URI="https://github.com/ros-industrial-release/industrial_core-release/archive/release/melodic/${PN}/0.7.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/class_loader
	ros-melodic/moveit_core
	ros-melodic/moveit_ros_planning
	ros-melodic/orocos_kdl
	ros-melodic/pluginlib
	ros-melodic/trajectory_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
