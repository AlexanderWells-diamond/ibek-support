#!/bin/bash

echo '
CROSS_COMPILER_TARGET_ARCHS =

# Enable file plugins and source them all from ADSupport
# this minimizes dependency issues with system libraries

WITH_GRAPHICSMAGICK = YES
GRAPHICSMAGICK_EXTERNAL = NO

WITH_HDF5     = YES
HDF5_EXTERNAL = NO

WITH_SZIP     = YES
SZIP_EXTERNAL = NO

WITH_JPEG     = YES
JPEG_EXTERNAL = NO

WITH_TIFF     = YES
TIFF_EXTERNAL = NO

XML2_EXTERNAL = NO

WITH_ZLIB     = YES
ZLIB_EXTERNAL = NO

WITH_BLOSC    = YES
BLOSC_EXTERNAL= NO

WITH_CBF      = YES
CBF_EXTERNAL  = NO

WITH_PVA      = YES
WITH_BOOST    = YES
' > configure/CONFIG_SITE.linux-x86_64.Common

echo '
# Generic RELEASE.local file that should work for all Support modules and IOCs

SUPPORT=NotYetSet
AREA_DETECTOR=$(SUPPORT)
include $(SUPPORT)/configure/RELEASE
' > configure/RELEASE.local
