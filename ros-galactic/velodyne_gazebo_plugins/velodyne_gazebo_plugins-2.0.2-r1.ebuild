# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="Gazebo plugin to provide simulated data from Velodyne laser scanners."
HOMEPAGE="http://wiki.ros.org/velodyne_gazebo_plugins"
SRC_URI="https://github.com/ros2-gbp/velodyne_simulator-release/archive/release/galactic/${PN}/2.0.2-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/gazebo_dev
	ros-galactic/gazebo_msgs
	ros-galactic/gazebo_ros
	ros-galactic/rclcpp
	ros-galactic/sensor_msgs
	ros-galactic/tf2
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
