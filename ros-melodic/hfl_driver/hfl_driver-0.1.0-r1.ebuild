# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The hfl package"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/flynneva/${PN}-release/archive/release/melodic/${PN}/0.1.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/angles
	ros-melodic/camera_info_manager
	ros-melodic/cv_bridge
	ros-melodic/diagnostic_updater
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/image_geometry
	ros-melodic/image_transport
	ros-melodic/message_runtime
	ros-melodic/nodelet
	ros-melodic/roscpp
	ros-melodic/rospy
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/tf
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/udp_com
	ros-melodic/visualization_msgs
	test? ( ros-melodic/roslint )
	test? ( ros-melodic/rostest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
