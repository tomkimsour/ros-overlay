# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Filtering and data conversion utilities for radar data."
HOMEPAGE="https://wiki.ros.org/ainstein_radar_filters"
SRC_URI="https://github.com/AinsteinAI/ainstein_radar-release/archive/release/melodic/${PN}/2.0.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/ainstein_radar_msgs
	ros-melodic/jsk_recognition_msgs
	ros-melodic/nodelet
	ros-melodic/pcl_ros
	ros-melodic/roscpp
	ros-melodic/tf2_eigen
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
