# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="visp_hand2eye_calibration estimates the camera position with respect\
	 [...]"
HOMEPAGE="http://wiki.ros.org/visp_hand2eye_calibration"
SRC_URI="https://github.com/lagadic/vision_visp-release/archive/release/noetic/${PN}/0.13.1-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="GPL-2.0-only"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/geometry_msgs
	ros-noetic/image_proc
	ros-noetic/message_generation
	ros-noetic/message_runtime
	ros-noetic/roscpp
	ros-noetic/sensor_msgs
	ros-noetic/std_msgs
	ros-noetic/visp
	ros-noetic/visp_bridge
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"