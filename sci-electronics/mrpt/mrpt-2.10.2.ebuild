# Copyright 2017 Open Source Robotics Foundation
# Distributed under the terms of the BSD License

EAPI=8

inherit git-r3 cmake flag-o-matic xdg

DESCRIPTION="Mobile Robot Programming Toolkit"
HOMEPAGE="http://www.mrpt.org/"
#Fix submodules on new versions
EGIT_REPO_URI="https://github.com/MRPT/mrpt.git"
EGIT_COMMIT="${PV}"

LICENSE="BSD-3-Clause"
# Subslot = major version = soname of libs
SLOT="0"
KEYWORDS="~x86 ~amd64 ~arm ~arm64"
IUSE="ftdi dc1394"

RDEPEND="
	dev-cpp/eigen
	sci-libs/suitesparse
	media-libs/opencv
	x11-libs/wxGTK
	media-video/ffmpeg
	virtual/glu
	sys-libs/zlib
	virtual/jpeg
	ftdi? ( dev-embedded/libftdi )
	dc1394? ( media-libs/libdc1394 )
	virtual/libusb
	sci-libs/pcl
	virtual/udev
	net-libs/libpcap
	sci-libs/octomap
"
DEPEND="${RDEPEND}"
CMAKE_BUILD_TYPE=RelWithDebInfo

pkg_postinst() {
	xdg_pkg_postinst
}

pkg_postrm() {
	xdg_pkg_postrm
}
