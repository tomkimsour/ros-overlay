# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS messages for jsk_pcl_ros and jsk_perception."
HOMEPAGE="https://jsk-docs.readthedocs.io/projects/jsk_recognition/en/latest/jsk_recognition_msgs"
SRC_URI="https://github.com/tork-a/jsk_recognition-release/archive/release/melodic/${PN}/1.2.15-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/geometry_msgs
	ros-melodic/jsk_footstep_msgs
	ros-melodic/message_generation
	ros-melodic/pcl_msgs
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
