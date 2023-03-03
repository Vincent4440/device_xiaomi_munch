#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common pe stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_USES_AOSP_RECOVERY := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_INCLUDE_LIVE_WALLPAPERS := true
TARGET_HAS_UDFPS := false
EXTRA_UDFPS_ANIMATIONS := false

# Inherit from device makefile
$(call inherit-product, device/xiaomi/munch/device.mk)


PRODUCT_NAME := aosp_munch
PRODUCT_DEVICE := munch
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F4

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
   PRIVATE_BUILD_DESC="missi-user 12 SKQ1.211006.001 V13.0.5.0.SLMMIXM release-keys"

BUILD_FINGERPRINT := Redmi/munch/munch:12/RKQ1.211001.001/V13.0.5.0.SLMMIXM:user/release-keys
