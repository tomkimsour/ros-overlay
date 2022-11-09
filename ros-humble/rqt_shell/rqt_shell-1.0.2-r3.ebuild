# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="rqt_shell is a Python GUI plugin providing an interactive shell."
HOMEPAGE="http://wiki.ros.org/rqt_shell"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.0.2-3.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/python_qt_binding
	ros-humble/qt_gui
	ros-humble/qt_gui_py_common
	ros-humble/rqt_gui
	ros-humble/rqt_gui_py
	dev-python/catkin_pkg
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
