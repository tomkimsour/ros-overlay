# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-python

DESCRIPTION="rqt_graph provides a GUI plugin for visualizing the ROS\
	  computation [...]"
HOMEPAGE="http://wiki.ros.org/rqt_graph"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/humble/${PN}/1.3.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/ament_index_python
	ros-humble/python_qt_binding
	ros-humble/qt_dotgraph
	ros-humble/rqt_gui
	ros-humble/rqt_gui_py
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
