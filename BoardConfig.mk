#
# Copyright (C) 2024 Paranoid Android
#
# SPDX-License-Identifier: Apache-2.0
#

# Must set these before including common config
TARGET_BOARD_PLATFORM := sdm660
TARGET_BOOTLOADER_BOARD_NAME := SDM660

# Inherit from motorola msm8998-common
include device/motorola/msm8998-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/evert

# Assertions
TARGET_BOARD_INFO_FILE := $(DEVICE_PATH)/configs/board-info.txt
TARGET_OTA_ASSERT_DEVICE := evert

# Display
TARGET_SCREEN_DENSITY := 420

# Kernel
TARGET_KERNEL_CONFIG := aospa_evert_defconfig

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/evert_manifest.xml

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864 # 64 MB
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2885681152 # 2752 MB
BOARD_VENDORIMAGE_PARTITION_SIZE := 956301312 # 912 MB

# Power
TARGET_HAS_NO_WLAN_STATS := true

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# inherit from the proprietary version
include vendor/motorola/evert/BoardConfigVendor.mk
