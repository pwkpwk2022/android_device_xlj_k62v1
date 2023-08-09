#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from k62v1_64_bsp device
$(call inherit-product, device/kh/k62v1_64_bsp/device.mk)

PRODUCT_DEVICE := k62v1_64_bsp
PRODUCT_NAME := omni_k62v1_64_bsp
PRODUCT_BRAND := L45
PRODUCT_MODEL := LSE4521
PRODUCT_MANUFACTURER := kh

PRODUCT_GMS_CLIENTID_BASE := android-kh

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_k62v1_64_bsp-user 10 PPR1.180610.011 eng.runyee.20220908.180019 releasekey"

BUILD_FINGERPRINT := L45/full_k62v1_64_bsp/k62v1_64_bsp:10/PPR1.180610.011/runyee0109081759:user/releasekey
