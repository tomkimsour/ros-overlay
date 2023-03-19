# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_8,3_9,3_10} )

inherit ament-cmake

DESCRIPTION="The swri_transform_util package contains utility functions and classes for\[...]"
HOMEPAGE="https://github.com/swri-robotics/marti_common"
SRC_URI="https://github.com/ros2-gbp/marti_common-release/archive/release/humble/${PN}/3.5.0-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
	ros-humble/cv_bridge
	ros-humble/diagnostic_msgs
	ros-humble/diagnostic_updater
	ros-humble/geographic_msgs
	ros-humble/geometry_msgs
	ros-humble/gps_msgs
	ros-humble/launch_xml
	ros-humble/marti_nav_msgs
	ros-humble/rcl_interfaces
	ros-humble/rclcpp
	ros-humble/rclcpp_components
	ros-humble/rclpy
	ros-humble/sensor_msgs
	ros-humble/swri_math_util
	ros-humble/swri_roscpp
	ros-humble/tf2
	ros-humble/tf2_geometry_msgs
	ros-humble/tf2_py
	ros-humble/tf2_ros
	dev-libs/boost[python]
	sci-libs/geos
	sci-libs/proj
	dev-python/numpy
	dev-cpp/yaml-cpp
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	ros-humble/ament_cmake_python
	virtual/pkgconfig
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
