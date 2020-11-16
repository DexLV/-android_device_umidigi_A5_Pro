#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/UMIDIGI/A5_Pro/A5_Pro-vendor.mk)

# Vendor properties
-include $(LOCAL_PATH)/vendor_props.mk

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay
    
# Overlay from mtk-telephony-ext
# include vendor/mediatek/hardware/telephony-ext/overlay.mk

# A/B
AB_OTA_UPDATER := false

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

# Camera
# PRODUCT_PACKAGES += \
#    Snap

# Enforce privapp-permissions whitelist
PRODUCT_PROPERTY_OVERRIDES += \
    ro.control_privapp_permissions=log


# Display
PRODUCT_PACKAGES += \
    libvulkan \
    libRSDriver_mtk
    
# Dex
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# HIDL
PRODUCT_PACKAGES += \
    libhidltransport \
    libhwbinder \


# Init cripts
PRODUCT_PACKAGES += \
    fstab.enableswap \
    init.mt6763.rc \
    fstab.mt6763 \
    init.safailnet.rc

#Symbols
#PRODUCT_PACKAGES += \
#    libshim_showlogo

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
    $(LOCAL_PATH)/idc/mtk-pad.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-pad.idc \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# KPOC
PRODUCT_PACKAGES += \
    libsuspend

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.secure_lock_screen.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.software.secure_lock_screen.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/android.hardware.camera.xml \
    $(LOCAL_PATH)/halium-overlay/vendor/lib/hw/audio.primary.mt6763.so:$(TARGET_COPY_OUT_SYSTEM)/lib/hw/audio.primary.mt6763.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/hw/audio.primary.mt6763.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/hw/audio.primary.mt6763.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/libcam.halsensor.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcam.halsensor.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/libcameracustom.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libcameracustom.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/libmtk-ril.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmtk-ril.so \
    $(LOCAL_PATH)/halium-overlay/vendor/lib64/libmtkcam_metastore.so:$(TARGET_COPY_OUT_SYSTEM)/lib64/libmtkcam_metastore.so

# LiveDisplay
PRODUCT_PACKAGES += \
    lineage.livedisplay@2.0-service-mediatek


# VNDK
PRODUCT_TARGET_VNDK_VERSION := 28
PRODUCT_EXTRA_VNDK_VERSIONS := 28
