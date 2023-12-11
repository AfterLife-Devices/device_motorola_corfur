#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from corfur device
$(call inherit-product, device/motorola/corfur/device.mk)

# Inherit some common AfterLife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 1080

# AfterLife flags
AFTERLIFE_MAINTAINER := Sozosha_Team

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := false

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

PRODUCT_NAME := afterlife_corfur
PRODUCT_DEVICE := corfur
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g71 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=corfur_g \
    PRIVATE_BUILD_DESC="corfur_g-user 12 S2RUBS32.51-15-9-11 dd8d5-e81484 release-keys"

BUILD_FINGERPRINT := motorola/corfur_g/corfur:12/S2RUBS32.51-15-9-11/dd8d5-e81484:user/release-keys
