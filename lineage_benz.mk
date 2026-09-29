#
# Copyright (C) 2021-2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from benz device
$(call inherit-product, device/oneplus/benz/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# AxionOS Flags
AXION_MAINTAINER := rukia
AXION_PROCESSOR := Snapdragon_7_Gen_3
AXION_CAMERA_REAR_INFO := 50,8
AXION_CAMERA_FRONT_INFO := 16

TARGET_DISABLE_EPPE := true
TARGET_ENABLE_BLUR := true

TARGET_NEEDS_VULKAN_MEDIA_FIX := true

TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTED_REFRESH_RATES := 60,90,120

PRODUCT_NAME := lineage_benz
PRODUCT_DEVICE := benz
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2613

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1786442851710 release-keys" \
    BuildFingerprint=OnePlus/CPH2613IN/OP5D3FL1:16/TP1A.220905.001/U.R4T2.511ee55-2be21cb-2c3ed02:user/release-keys \
    DeviceName=OP5D3FL1 \
    DeviceProduct=CPH2613 \
    SystemDevice=OP5D3FL1 \
    SystemName=CPH2613
