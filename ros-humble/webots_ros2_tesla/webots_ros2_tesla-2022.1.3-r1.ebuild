# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-python

DESCRIPTION="Tesla ROS2 interface for Webots."
HOMEPAGE="http://wiki.ros.org/webots_ros2"
SRC_URI="https://github.com/ros2-gbp/webots_ros2-release/archive/release/humble/${PN}/2022.1.3-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/ackermann_msgs
	ros-humble/builtin_interfaces
	ros-humble/rclpy
	ros-humble/webots_ros2_driver
	test? ( ros-humble/ament_copyright )
	test? ( ros-humble/ament_flake8 )
	test? ( ros-humble/ament_pep257 )
	dev-python/numpy
	media-libs/opencv[python]
	test? ( dev-python/pytest )
"
DEPEND="${RDEPEND}
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
