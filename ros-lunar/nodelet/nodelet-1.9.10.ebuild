# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=6

DESCRIPTION="The nodelet package is designed to provide a way to run multiple
    algorithms in the same process with zero copy transport between
    algorithms.

    This package provides both the nodelet base class needed for
    implementing a nodelet, as well as the NodeletLoader class used
    for instantiating nodelets."
HOMEPAGE="https://wiki.ros.org"
SRC_URI="https://github.com/ros-gbp/nodelet_core-release/archive/release/lunar/nodelet/1.9.10-0.tar.gz"

LICENSE="BSD"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"

RDEPEND="
    ros-lunar/roscpp
    ros-lunar/std_msgs
    ros-lunar/pluginlib
    ros-lunar/bondcpp
    ros-lunar/message_runtime
    ros-lunar/rosconsole
    sys-apps/util-linux
    dev-libs/boost
"
DEPEND="${RDEPEND}
    ros-lunar/message_generation
    ros-lunar/rospy
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
