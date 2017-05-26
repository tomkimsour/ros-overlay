# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The actionlib stack provides a standardized interface for
    interfacing with preemptable tasks. Examples of this include moving
    the base to a target location, performing a laser scan and returning
    the resulting point cloud, detecting the handle of a door, etc."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/actionlib-release/archive/release/lunar/actionlib/1.11.9-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/rostest
    ros-lunar/roscpp
    ros-lunar/actionlib_msgs
    ros-lunar/rospy
    ros-lunar/std_msgs
    ros-lunar/message_runtime
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-lunar/message_generation
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
