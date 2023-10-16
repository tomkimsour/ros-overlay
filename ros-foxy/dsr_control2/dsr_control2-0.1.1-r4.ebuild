# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The dsr_control2 package"
HOMEPAGE="http://wiki.ros.org/doosan_robotics"
SRC_URI="https://github.com/doosan-robotics/doosan-robot2-release/archive/release/foxy/${PN}/0.1.1-4.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-foxy/controller_manager
	ros-foxy/dsr_msgs2
	ros-foxy/hardware_interface
	ros-foxy/rclcpp
	ros-foxy/sensor_msgs
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"