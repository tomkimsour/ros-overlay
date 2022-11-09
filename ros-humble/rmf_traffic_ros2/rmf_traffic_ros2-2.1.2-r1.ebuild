# Copyright 2022 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{3_5,3_6} )

inherit ament-cmake

DESCRIPTION="A package containing messages used by the RMF traffic management system."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros2-gbp/rmf_ros2-release/archive/release/humble/${PN}/2.1.2-1.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-humble/rclcpp
	ros-humble/rmf_building_map_msgs
	ros-humble/rmf_fleet_msgs
	ros-humble/rmf_site_map_msgs
	ros-humble/rmf_traffic
	ros-humble/rmf_traffic_msgs
	ros-humble/rmf_utils
	test? ( ros-humble/ament_cmake_catch2 )
	test? ( ros-humble/ament_cmake_uncrustify )
	dev-cpp/nlohmann_json
	sci-libs/proj
	dev-libs/ossp-uuid
	dev-cpp/yaml-cpp
	sys-libs/zlib
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	dev-cpp/eigen
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
