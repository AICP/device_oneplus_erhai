#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from erhai device
$(call inherit-product, device/oneplus/erhai/device.mk)

# Inherit some common Aicp stuff.
$(call inherit-product, vendor/aicp/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := aicp_erhai
PRODUCT_DEVICE := erhai
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OPD2415
PRODUCT_CHARACTERISTICS := nosdcard,tablet

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi_64-user 15 AP3A.240617.008 1758608624134 release-keys" \
    BuildFingerprint=OnePlus/OPD2415EEA/OP6190L1:15/AP3A.240617.008/V.R4T3.1ffacb0_1-12da3:user/release-keys \
    DeviceName=OP6190L1 \
    DeviceProduct=OPD2415 \
    SystemDevice=OP6190L1 \
    SystemName=OPD2415

# AICP Device Maintainers
PRODUCT_BUILD_PROP_OVERRIDES += \
    DEVICE_MAINTAINERS="Moshe Barash (mosimchah)"
