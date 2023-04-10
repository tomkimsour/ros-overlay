# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="mavros_msgs defines messages for <a href=\"http://wiki.ros.org/mavros\">MAV[...]"
HOMEPAGE="http://wiki.ros.org/mavros_msgs"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/melodic/${PN}/1.15.0-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="( GPL-3.0-only LGPL-3.0-only BSD )"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/geographic_msgs
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
