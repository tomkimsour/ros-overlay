# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="effort_controllers"
HOMEPAGE="https://github.com/ros-controls/ros_controllers/wiki"
SRC_URI="https://github.com/ros-gbp/ros_controllers-release/archive/release/melodic/${PN}/0.17.3-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/angles
	ros-melodic/control_msgs
	ros-melodic/control_toolbox
	ros-melodic/controller_interface
	ros-melodic/forward_command_controller
	ros-melodic/pluginlib
	ros-melodic/realtime_tools
	ros-melodic/urdf
	test? ( ros-melodic/controller_manager )
	test? ( ros-melodic/hardware_interface )
	test? ( ros-melodic/robot_state_publisher )
	test? ( ros-melodic/rosgraph_msgs )
	test? ( ros-melodic/rostest )
	test? ( ros-melodic/sensor_msgs )
	test? ( ros-melodic/std_msgs )
	test? ( ros-melodic/xacro )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
