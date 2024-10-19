# Inherit some common Lineage stuff.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from evert device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Device identifiers
#BUILD_FINGERPRINT := motorola/evert/evert:9/PPW29.116-16-30/40d1e:user/release-keys
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := evert
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := Moto G6 Plus
PRODUCT_NAME := lineage_evert

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=evert \
    PRIVATE_BUILD_DESC="evert-user 9 PPW29.116-16-30 40d1e release-keys"
