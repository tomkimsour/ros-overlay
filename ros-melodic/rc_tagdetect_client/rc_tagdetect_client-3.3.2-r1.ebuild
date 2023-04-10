# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros client for roboception tag detection modules"
HOMEPAGE="http://wiki.ros.org/rc_tagdetect_client"
SRC_URI="https://github.com/roboception-gbp/rc_visard-release/archive/release/melodic/${PN}/3.3.2-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/dynamic_reconfigure
	ros-melodic/geometry_msgs
	ros-melodic/message_runtime
	ros-melodic/rc_common_msgs
	ros-melodic/rcdiscover
	ros-melodic/roscpp
	ros-melodic/std_srvs
	ros-melodic/tf
	ros-melodic/tf2_geometry_msgs
	ros-melodic/visualization_msgs
	net-misc/curl
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
