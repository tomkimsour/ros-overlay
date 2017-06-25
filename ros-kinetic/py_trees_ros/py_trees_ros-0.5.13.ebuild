# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

inherit cmake-utils eutils

DESCRIPTION="Ros extensions and behaviours for py_trees."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/stonier/py_trees_ros-release/archive/release/kinetic/py_trees_ros/0.5.13-0.tar.gz -> ${P}-${PV}.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
PYTHON_DEPEND="3::3.5"

RDEPEND="
    ros-kinetic/actionlib
    ros-kinetic/actionlib_msgs
    ros-kinetic/dynamic_reconfigure
    ros-kinetic/geometry_msgs
    ros-kinetic/move_base_msgs
    ros-kinetic/nav_msgs
    ros-kinetic/py_trees
    ros-kinetic/py_trees_msgs
    ros-kinetic/rosbag
    ros-kinetic/rospy
    ros-kinetic/sensor_msgs
    ros-kinetic/std_msgs
    ros-kinetic/unique_id
    ros-kinetic/uuid_msgs
    dev-python/rospkg
    dev-python/termcolor
"
DEPEND="${RDEPEND}
    ros-kinetic/catkin
    dev-python/setuptools
"

SLOT="0"
CMAKE_BUILD_TYPE=RelWithDebInfo
ROS_PREFIX="opt/ros/kinetic"

src_unpack() {
    default
    mv *${P}* ${P}
}

src_configure() {
    append-cxxflags "-std=c++11"
    export DEST_SETUP_DIR="/${ROS_PREFIX}"
    local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=${D}${ROS_PREFIX}
        -DCMAKE_PREFIX_PATH=/${ROS_PREFIX}
        -DPYTHON_INSTALL_DIR=lib64/python3.5/site-packages
        -DCATKIN_ENABLE_TESTING=OFF
        -DPYTHON_EXECUTABLE=/usr/bin/ros-python-kinetic
        -DCATKIN_BUILD_BINARY_PACAKGE=1

     )
    cmake-utils_src_configure
}

src_install() {
    cd ${WORKDIR}/${P}_build
    make install || die
}
