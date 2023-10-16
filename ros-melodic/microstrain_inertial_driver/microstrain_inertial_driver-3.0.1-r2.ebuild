# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="The ros_mscl package provides a driver for the LORD/Microstrain inertial pr[...]"
HOMEPAGE="https://github.com/LORD-MicroStrain/microstrain_inertial"
SRC_URI="https://github.com/LORD-MicroStrain/microstrain_inertial-release/archive/release/melodic/${PN}/3.0.1-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="MIT"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/cmake_modules
	ros-melodic/diagnostic_aggregator
	ros-melodic/diagnostic_updater
	ros-melodic/geometry_msgs
	ros-melodic/mavros_msgs
	ros-melodic/message_runtime
	ros-melodic/microstrain_inertial_msgs
	ros-melodic/nav_msgs
	ros-melodic/nmea_msgs
	ros-melodic/roscpp
	ros-melodic/sensor_msgs
	ros-melodic/std_msgs
	ros-melodic/std_srvs
	ros-melodic/tf2
	ros-melodic/tf2_geometry_msgs
	ros-melodic/tf2_ros
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
	ros-melodic/message_generation
	ros-melodic/roslint
	net-misc/curl
	dev-vcs/git
	app-misc/jq
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"