# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="ROS Wrappers for the Picovoice libraries"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/reinzor/picovoice_ros-release/archive/release/noetic/${PN}/1.0.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/actionlib
	ros-noetic/ddynamic_reconfigure
	ros-noetic/picovoice_msgs
	ros-noetic/roscpp
	ros-noetic/roslib
	media-libs/libsndfile
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"