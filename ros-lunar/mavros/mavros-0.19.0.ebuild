# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="MAVROS -- MAVLink extendable communication node for ROS
    with proxy for Ground Control Station."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/mavlink/mavros-release/archive/release/lunar/mavros/0.19.0-0.tar.gz"

LICENSE="UNKNOWN"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/geometry_msgs
    ros-lunar/rospy
    ros-lunar/roscpp
    ros-lunar/libmavconn
    ros-lunar/mavros_msgs
    ros-lunar/std_msgs
    ros-lunar/eigen_conversions
    ros-lunar/mavlink
    ros-lunar/pluginlib
    ros-lunar/message_runtime
    ros-lunar/diagnostic_updater
    ros-lunar/std_srvs
    ros-lunar/rosconsole_bridge
    ros-lunar/sensor_msgs
    ros-lunar/nav_msgs
    ros-lunar/tf2_ros
    ros-lunar/diagnostic_msgs
    dev-libs/boost
    dev-cpp/eigen
"
DEPEND="${RDEPEND}
    ros-lunar/angles
    ros-lunar/cmake_modules
"

SLOT="0/0"
CMAKE_BUILD_TYPE=RelWithDebInfo

src_unpack() {
    wget -O ${P}.tar.gz ${SRC_URI}
    tar -xf ${P}.tar.gz
    rm -f ${P}.tar.gz
    mv *${P}* ${P}
}

src_configure() {
    mkdir ${WORKDIR}/src
    cp -R ${WORKDIR}/${P} ${WORKDIR}/src/${P}
}

src_compile() {
    echo ""
}

src_install() {
    cd ../../work
    source /opt/ros/lunar/setup.bash
    catkin_make_isolated --install --install-space="${D}" || die
}

pkg_postinst() {
    cd ${D}
    cp -R lib* /opt/ros/lunar
    cp -R share /opt/ros/lunar
    cp -R bin /opt/ros/lunar
    cp -R include /opt/ros/lunar
}
