#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := A5_Pro

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from UMIDIGI A5 Pro device
$(call inherit-product, device/UMIDIGI/A5_Pro/device.mk)

# Inherit some common potato stuff.
$(call inherit-product, vendor/potato/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := posp_A5_Pro
PRODUCT_DEVICE := A5_Pro
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := A5_Pro
PRODUCT_MANUFACTURER := UMIDIGI

PRIVATE_BUILD_DESC="coral-user 10 QQ3A.200605.001 6392402 release-keys"

# Fingerprint
BUILD_FINGERPRINT := "google/coral/coral:10/QQ3A.200705.002/6506677:user/release-keys"

# Maintainer
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xtended.maintainer=Dex(dnbx)-and-Hadenix

# GMS as per stock
PRODUCT_GMS_CLIENTID_BASE := android-umidigi
