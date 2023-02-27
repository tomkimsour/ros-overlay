# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="octomap_server loads a 3D map \(as Octree-based OctoMap\) and distributes i[...]"
HOMEPAGE="http://www.ros.org/wiki/octomap_server"
SRC_URI="https://github.com/ros2-gbp/octomap_mapping-release/archive/release/galactic/${PN}/2.0.0-1.tar.gz -> ${PN}-galactic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-galactic/geometry_msgs
	ros-galactic/message_filters
	ros-galactic/nav_msgs
	ros-galactic/octomap
	ros-galactic/octomap_msgs
	ros-galactic/octomap_ros
	ros-galactic/pcl_conversions
	ros-galactic/pcl_ros
	ros-galactic/rclcpp
	ros-galactic/rclcpp_components
	ros-galactic/sensor_msgs
	ros-galactic/std_msgs
	ros-galactic/std_srvs
	ros-galactic/tf2
	ros-galactic/tf2_eigen
	ros-galactic/tf2_geometry_msgs
	ros-galactic/tf2_ros
	ros-galactic/visualization_msgs
	test? ( ros-galactic/ament_lint_auto )
	test? ( ros-galactic/ament_lint_common )
	sci-libs/pcl
"
DEPEND="${RDEPEND}
	ros-galactic/ament_cmake_auto
"

SLOT="0"
ROS_DISTRO="galactic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
