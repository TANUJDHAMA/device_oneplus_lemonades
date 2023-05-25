#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lemonades device
$(call inherit-product, device/oneplus/lemonades/device.mk)

# Inherit some common Rise stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

#RISE OS Stuff
RISING_MAINTAINER := Tanuj
TARGET_BUILD_APERTURE_CAMERA := false
TARGET_ENABLE_BLUR := true
TARGET_HAS_UDFPS := true
TARGET_USE_PIXEL_FINGERPRINT := true
WITH_GMS := true
RISING_CHIPSET := 870
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_OPTOUT_GOOGLE_TELEPHONY := false

PRODUCT_NAME := lineage_lemonades
PRODUCT_DEVICE := lemonades
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := LE2101

PRODUCT_SYSTEM_NAME := OnePlus9R
PRODUCT_SYSTEM_DEVICE := OnePlus9R

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="OnePlus9R_IND-user 13 RKQ1.211119.001 R.eea0db-2-1 release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := OnePlus/OnePlus9R_IND/OnePlus9R:13/RKQ1.211119.001/R.eea0db-2-1:user/release-keys
