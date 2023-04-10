# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="This package is basically an OpenSceneGraph \(OSG\) adaptation of the Inter[...]"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/uji-ros-pkg/visualization_osg-release/archive/release/melodic/${PN}/1.0.2-2.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-melodic/interactive_markers
	ros-melodic/osg_markers
	ros-melodic/osg_utils
	ros-melodic/roscpp
	ros-melodic/tf
	ros-melodic/visualization_msgs
	dev-games/openscenegraph
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
