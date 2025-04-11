#!/bin/bash

# Creates build directory and configures Kodi build.

source configuration.sh
echo "Kodi source directory  $KODI_SOURCE_DIR"
echo "Kodi build directory   $KODI_BUILD_DIR"
echo "Kodi install directory $KODI_INSTALL_DIR"

# Create build directory.
mkdir -p $KODI_BUILD_DIR
cd $KODI_BUILD_DIR

cmake $KODI_SOURCE_DIR -DCMAKE_INSTALL_PREFIX=$KODI_INSTALL_DIR -DCMAKE_BUILD_TYPE=Release -DCORE_PLATFORM_NAME=x11 -DAPP_RENDER_SYSTEM=gl -DENABLE_MARIADBCLIENT=OFF -DENABLE_INTERNAL_DAV1D=ON
echo "Configuration finished."
echo "Kodi source directory  ${KODI_SOURCE_DIR}"
echo "Kodi build directory   ${KODI_BUILD_DIR}"
echo "Kodi install directory ${KODI_INSTALL_DIR}"
