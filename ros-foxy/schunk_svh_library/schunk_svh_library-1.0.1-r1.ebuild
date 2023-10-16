# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ros-cmake

DESCRIPTION="Standalone C++ library for accessing the Schunk five finger hand."
HOMEPAGE="http://wiki.ros.org/schunk_svh_library"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.1-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="GPL-3.0-or-later"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/ament_cmake
	test? ( dev-libs/boost[python] )
"
DEPEND="${RDEPEND}
	dev-libs/boost[python]
	dev-util/cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"