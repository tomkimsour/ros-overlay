# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="C++ Demo applications for Quality of Service features"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/demos-release/archive/release/galactic/${PN}/0.14.3-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/example_interfaces
	ros-galactic/launch_ros
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/rcutils
	ros-galactic/rmw
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	test? ( ros-galactic/launch )
	test? ( ros-galactic/launch_testing )
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake
	ros-galactic/rmw_implementation_cmake
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
