# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6
PYTHON_COMPAT=( python{2_7,3_5,3_6} )

inherit ros-cmake

DESCRIPTION="Package with a node that facilitates the uploading of files to Amazon S3"
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/aws-gbp/rosbag_uploader-release/archive/release/melodic/${PN}/1.0.1-1.tar.gz -> ${PN}-melodic-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="test"
RDEPEND="
	ros-melodic/actionlib
	ros-melodic/actionlib_msgs
	ros-melodic/aws_common
	ros-melodic/aws_ros1_common
	ros-melodic/file_uploader_msgs
	ros-melodic/roscpp
	ros-melodic/s3_common
	test? ( ros-melodic/rostest )
	dev-libs/boost[python]
	test? ( dev-cpp/gtest )
	test? ( dev-cpp/gtest )
"
DEPEND="${RDEPEND}
	ros-melodic/catkin
"

SLOT="0"
ROS_DISTRO="melodic"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
