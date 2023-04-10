# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="Raspberry Pi Mouse examples"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/${PN}-release/archive/release/foxy/${PN}/1.0.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/geometry_msgs
	ros-foxy/hls_lfcd_lds_driver
	ros-foxy/joy_linux
	ros-foxy/nav2_map_server
	ros-foxy/raspimouse
	ros-foxy/raspimouse_msgs
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/rclcpp_lifecycle
	ros-foxy/rt_usb_9axisimu_driver
	ros-foxy/sensor_msgs
	ros-foxy/slam_toolbox
	ros-foxy/std_msgs
	ros-foxy/std_srvs
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
	media-libs/opencv
	media-tv/v4l-utils
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
