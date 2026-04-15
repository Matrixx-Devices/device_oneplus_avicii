#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from avicii device
$(call inherit-product, device/oneplus/avicii/device.mk)

# Inherit some common Matrixx stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_NAME := matrixx_avicii
PRODUCT_DEVICE := avicii
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := AC2003

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Nord-user 12 RKQ1.211119.001 Q.202212051830:user release-keys" \
    BuildFingerprint=OnePlus/Nord/Nord:12/RKQ1.211119.001/Q.202212051830:user/release-keys \
    DeviceName=Nord \
    DeviceProduct=avicii \
    SystemName=Nord \
    SystemDevice=avicii

# Build
MATRIXX_MAINTAINER := "Kaveer X Sreeshankar"
TARGET_SUPPORTED_REFRESH_RATES := 60,90
TARGET_CUSTOM_UDFPS := true
WITH_GMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
WITH_GMS_COMMS_SUITE := true
WITH_GMS_AICORE := true
WITH_BCR := true
$(call soong_config_set,surfaceflinger,frame_rate_category_high,90)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)
BYPASS_CHARGE_SUPPORTED := true
HBM_SUPPORTED := false
HBM_NODE := /sys/class/backlight/panel0-backlight/hbm_mode