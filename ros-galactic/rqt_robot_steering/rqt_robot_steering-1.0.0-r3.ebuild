# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="rqt_robot_steering provides a GUI plugin for steering a robot using Twist m[...]"
HOMEPAGE="http://wiki.ros.org/rqt_robot_steering"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/galactic/${PN}/1.0.0-3.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-galactic/ament_index_python
	ros-galactic/geometry_msgs
	ros-galactic/python_qt_binding
	ros-galactic/rclpy
	ros-galactic/rqt_gui
	ros-galactic/rqt_gui_py
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
