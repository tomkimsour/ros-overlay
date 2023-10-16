# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Visualization launch files and RViz configurations for Leo Rover"
HOMEPAGE="http://wiki.ros.org/leo_viz"
SRC_URI="https://github.com/fictionlab-gbp/leo_desktop-release/archive/release/melodic/${PN}/0.2.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/joint_state_publisher
	ros-melodic/joint_state_publisher_gui
	ros-melodic/leo_description
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"