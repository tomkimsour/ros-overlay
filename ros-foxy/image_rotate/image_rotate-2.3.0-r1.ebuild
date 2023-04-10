# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="<p>\
	  Contains a node that rotates an image stream in a way that minim[...]"
HOMEPAGE="https://index.ros.org/p/image_rotate/github-ros-perception-image_pipeline/"
SRC_URI="https://github.com/ros2-gbp/image_pipeline-release/archive/release/foxy/${PN}/2.3.0-1.tar.gz -> ${PN}-foxy-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-foxy/cv_bridge
	ros-foxy/image_transport
	ros-foxy/rclcpp
	ros-foxy/rclcpp_components
	ros-foxy/tf2
	ros-foxy/tf2_geometry_msgs
	ros-foxy/tf2_ros
	test? ( ros-foxy/ament_lint_auto )
	test? ( ros-foxy/ament_lint_common )
"
DEPEND="${RDEPEND}
	ros-foxy/ament_cmake_auto
	ros-foxy/class_loader
"

SLOT="0"
ROS_DISTRO="foxy"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
