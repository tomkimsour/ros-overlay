# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The pf_description package"
HOMEPAGE="https://github.com/PepperlFuchs/pf_lidar_ros_driver"
SRC_URI="https://github.com/PepperlFuchs/pf_lidar_ros_driver-release/archive/release/melodic/${PN}/1.2.0-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/robot_state_publisher
	ros-melodic/rviz
	ros-melodic/urdf
	ros-melodic/xacro
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
