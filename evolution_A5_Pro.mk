#
#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := breeze

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Inherit from UMIDIGI A5 Pro device
$(call inherit-product, device/UMIDIGI/A5_Pro/device.mk)
<<<<<<< HEAD
$(call inherit-product, vendor/xtras/xtras.mk)
=======
>>>>>>> 85a3f23b60bdbd9b639f6b62dee05e00675560a8

# Inherit some common Xtended stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := evolution_A5_Pro
PRODUCT_DEVICE := A5_Pro
PRODUCT_BRAND := UMIDIGI
PRODUCT_MODEL := A5_Pro
PRODUCT_MANUFACTURER := UMIDIGI

# Product characteristics
PRODUCT_AAPT_CONFIG := xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1440

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="A5_Pro" \
    PRODUCT_NAME="A5_Pro" \
<<<<<<< HEAD
    PRIVATE_BUILD_DESC="A5_Pro-user 9 PPR1.180610.011 1559618636 release-keys"

# Fingerprint
BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.200720.009/6720564:user/release-keys"
=======
    PRIVATE_BUILD_DESC="coral-user 11 RP1A.201105.002-6869500-release-keys"

# Fingerprint
BUILD_FINGERPRINT := "google/coral/coral:11/RP1A.201105.002/6869500:user/release-keys"
>>>>>>> 85a3f23b60bdbd9b639f6b62dee05e00675560a8


# GMS as per stock
PRODUCT_GMS_CLIENTID_BASE := android-umidigi
