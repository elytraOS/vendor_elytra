#
# Copyright (C) 2022 elytraOS
#
# SPDX-License-Identifier: Apache-2.0
#

# elytra Versioning
$(call inherit-product, vendor/elytra/target/product/version.mk)

# Don't dexpreopt prebuilts. (For GMS).
DONT_DEXPREOPT_PREBUILTS := true

# Include Common Qualcomm Device Tree
$(call inherit-product, device/qcom/common/common.mk)

# Include definitions for Snapdragon Clang
$(call inherit-product, vendor/qcom/sdclang/config/SnapdragonClang.mk)

# Include GMS, Modules and Pixel features
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product-if-exists, vendor/google/modules/build/mainline_modules_s.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

# Include Properties makefile
$(call inherit-product, vendor/elytra/target/product/properties.mk)

# Move Wi-Fi modules to vendor
PRODUCT_VENDOR_MOVE_ENABLED := true
