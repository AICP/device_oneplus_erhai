#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

TARGET_IS_TABLET := true

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Audio
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(LOCAL_PATH)/configs/audio/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml

# Boot animation
TARGET_SCREEN_HEIGHT := 3392
TARGET_SCREEN_WIDTH := 2400

# GMS
WITH_GMS_COMMS_SUITE := false

# Hardware
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# Overlays
PRODUCT_PACKAGES += \
    OPlusFrameworksResTarget

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Wireless pen
PRODUCT_PACKAGES += \
    OplusPen

# Inherit from the common OEM chipset makefile.
$(call inherit-product, device/oneplus/sm8750-common/common.mk)

# Inherit from the proprietary files makefile.
$(call inherit-product, vendor/oneplus/erhai/erhai-vendor.mk)
