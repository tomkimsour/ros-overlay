# Copyright 2023 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

EAPI=8
PYTHON_COMPAT=( python{3_8,3_9,3_10,3_11} )

inherit ament-cmake

DESCRIPTION="Library for controlling and capturing data from the Intel\(R\) RealSense\(T[...]"
HOMEPAGE="https://github.com/IntelRealSense/librealsense/"
SRC_URI="https://github.com/IntelRealSense/${PN}-release/archive/release/humble/${PN}/2.51.1-2.tar.gz -> ${PN}-humble-release-${PV}.tar.gz"

LICENSE="Apache-2.0"

KEYWORDS="~x86 ~amd64 ~arm ~arm64"
RDEPEND="
"
DEPEND="${RDEPEND}
	ros-humble/ament_cmake
	sys-kernel/dkms
	dev-libs/openssl
	virtual/libudev
	virtual/libusb:1
	virtual/pkgconfig
	sys-fs/udev
"

SLOT="0"
ROS_DISTRO="humble"
ROS_PREFIX="opt/ros/${ROS_DISTRO}"
