# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Node for using a video file as video topic source."
HOMEPAGE="http://www.ros.org/wiki/movie_publisher"
SRC_URI="https://github.com/peci1/${PN}-release/archive/release/noetic/${PN}/1.4.0-1.tar.gz -> ${PN}-noetic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-noetic/cv_bridge
	ros-noetic/rosbash_params
	ros-noetic/rospy
	ros-noetic/sensor_msgs
	virtual/ffmpeg
	dev-python/imageio
	media-libs/opencv[python]
"
DEPEND="${RDEPEND}
	ros-noetic/catkin
"

SLOT="0"
ROS_DISTRO="noetic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"