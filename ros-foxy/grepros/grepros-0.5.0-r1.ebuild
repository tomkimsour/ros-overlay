# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="grep for ROS bag files and live topics"
HOMEPAGE="http://www.ros.org/wiki/grepros"
SRC_URI="https://github.com/suurjaak/${PN}-release/archive/release/foxy/${PN}/0.5.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/builtin_interfaces
	ros-foxy/rclpy
	ros-foxy/rosidl_parser
	ros-foxy/rosidl_runtime_py
	test? ( ros-foxy/ament_cmake_pytest )
	test? ( ros-foxy/std_msgs )
	dev-python/pyyaml
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
