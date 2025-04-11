#!/bin/bash
#
# Install Kodi build dependencies for Ubuntu Focal Fossa.
#

#source configuration.sh

# Install build tools
apt install \
    build-essential debhelper \
    autoconf automake autopoint gettext autotools-dev cmake curl \
    default-jre doxygen gawk gdc gperf libtool \
    lsb-release swig unzip nasm zip ccache \
    gcc meson ninja-build

# Python stuff
apt install python3-dev python3-pil python3-pip

# Install build libraries (alphabetical order0
apt install \
    libasound2-dev \
    libass-dev \
    libavahi-client-dev \
    libavahi-common-dev \
    libbluetooth-dev \
    libbluray-dev \
    libbz2-dev \
    libcdio-dev \
    libcec-dev \
    libcrossguid-dev \
    libcurl4-openssl-dev \
    libcwiid-dev \
    libdbus-1-dev \
    libdrm-dev \
    libegl1-mesa-dev \
    libenca-dev \
    libexiv2-dev \
    libflac-dev \
    libfmt-dev \
    libfontconfig-dev \
    libfreetype-dev \
    libfribidi-dev \
    libfstrcmp-dev \
    libgcrypt20-dev \
    libgif-dev \
    libgl1-mesa-dev \
    libgles2-mesa-dev \
    libglu1-mesa-dev \
    libgnutls28-dev \
    libgpg-error-dev \
    libgtest-dev \
    libiso9660-dev \
    libjpeg-dev \
    liblcms2-dev \
    liblirc-dev \
    libltdl-dev \
    liblzo2-dev \
    libmicrohttpd-dev \
    libmysqlclient-dev \
    libnfs-dev \
    libogg-dev \
    libp8-platform-dev \
    libpcre2-dev \
    libplist-dev \
    libpng-dev \
    libpulse-dev \
    libshairplay-dev \
    libsmbclient-dev \
    libspdlog-dev \
    libsqlite3-dev \
    libssl-dev \
    libtag1-dev \
    libtiff5-dev \
    libtinyxml-dev \
    libtinyxml2-dev \
    libudev-dev \
    libunistring-dev \
    libva-dev \
    libvdpau-dev \
    libvorbis-dev \
    libxmu-dev \
    libxrandr-dev \
    libxslt1-dev \
    libxt-dev \
    rapidjson-dev \
    uuid-dev \
    zlib1g-dev

make -C ../kodi-source/tools/depends/target/flatbuffers PREFIX=/usr/local
