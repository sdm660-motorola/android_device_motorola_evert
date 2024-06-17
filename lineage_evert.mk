#
# Copyright (C) 2017 The LineageOS Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Device
$(call inherit-product, device/motorola/evert/device.mk)

# Boot control HAL
PRODUCT_PACKAGES += \
    android.hardware.boot@1.0-impl.recovery \
    bootctrl.sdm660 \
    bootctrl.sdm660.recovery

# Device identifiers
PRODUCT_DEVICE := evert
PRODUCT_NAME := lineage_evert
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g(6) plus
PRODUCT_MANUFACTURER := motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=evert \
    PRIVATE_BUILD_DESC="evert-user 9 PPW29.116-16-30 40d1e release-keys"

BUILD_FINGERPRINT := motorola/evert/evert:9/PPW29.116-16-30/40d1e:user/release-keys
