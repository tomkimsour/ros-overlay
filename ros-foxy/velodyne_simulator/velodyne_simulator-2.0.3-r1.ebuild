# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Metapackage allowing easy installation of Velodyne simulation components."
HOMEPAGE="http://wiki.ros.org/velodyne_simulator"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/2.0.3-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/velodyne_description
	ros-foxy/velodyne_gazebo_plugins
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
