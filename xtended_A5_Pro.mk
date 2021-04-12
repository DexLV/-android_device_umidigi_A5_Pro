#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := A5_Pro

# Inherit from UMIDIGI A5 Pro device
$(call inherit-product, device/umidigi/A5_Pro/device.mk)
$(call inherit-product, vendor/xtras/xtras.mk)

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/xtended/config/common_full_phone.mk)

# Boot animaton
TARGET_BOOT_ANIMATION_RES := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := xtended_A5_Pro
PRODUCT_DEVICE := A5_Pro
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := A5_Pro
PRODUCT_MANUFACTURER := UMIDIGI

PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200605.001 6392402 release-keys"

# Fingerprint
BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RQ2A.210305.006/7119741:user/release-keys"

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xtended.maintainer=Dex(dnbx)-and-Hadenix

# GMS as per stock
PRODUCT_GMS_CLIENTID_BASE := android-umidigi
