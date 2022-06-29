#
# Copyright (C) 2022 elytraOS
#
# SPDX-License-Identifier: Apache-2.0
#

# elytra Versioning
$(call inherit-product, vendor/elytra/target/product/version.mk)

# Bootanimation
$(call inherit-product, vendor/elytra/bootanimation/bootanimation.mk)

# Don't dexpreopt prebuilts. (For GMS).
DONT_DEXPREOPT_PREBUILTS := true

# Fonts
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,vendor/elytra/prebuilts/fonts/,$(TARGET_COPY_OUT_PRODUCT)/fonts) \
    vendor/elytra/target/config/fonts_customization.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/fonts_customization.xml

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += \
     vendor/elytra/target/config/elytra_vendor_framework_compatibility_matrix.xml

# Include Common Qualcomm Device Tree
$(call inherit-product, device/qcom/common/common.mk)

# Include definitions for Snapdragon Clang
$(call inherit-product, vendor/qcom/sdclang/config/SnapdragonClang.mk)

# Include GMS, Modules and Pixel features
$(call inherit-product, vendor/google/gms/config.mk)
$(call inherit-product, vendor/google/pixel/config.mk)

ifneq ($(TARGET_FLATTEN_APEX), true)
$(call inherit-product-if-exists, vendor/google/modules/build/mainline_modules.mk)
else
$(call inherit-product-if-exists, vendor/google/modules/build/mainline_modules_flatten_apex.mk)
endif

# Include Overlay makefile
$(call inherit-product, vendor/elytra/overlay/overlays.mk)

# Include Packages makefile
$(call inherit-product, vendor/elytra/target/product/packages.mk)

# Include Properties makefile
$(call inherit-product, vendor/elytra/target/product/properties.mk)

# Include SEPolicy makefile.
$(call inherit-product, vendor/elytra/sepolicy/sepolicy.mk)

# Move Wi-Fi modules to vendor
PRODUCT_VENDOR_MOVE_ENABLED := true

# Permissions
PRODUCT_COPY_FILES += \
    vendor/elytra/target/config/permissions/default_permissions_com.google.android.deskclock.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/default-permissions/default_permissions_com.google.android.deskclock.xml \
    vendor/elytra/target/config/permissions/privapp-permissions-hotword.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/permissions/privapp-permissions-hotword.xml \
    vendor/elytra/target/config/permissions/lily_experience.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/lily_experience.xml

# Pre-optimization
PRODUCT_DEXPREOPT_SPEED_APPS += \
    SystemUI

# Compile SystemUI on device with `speed`.
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.systemuicompilerfilter=speed

# Sensitive phone numbers and APN configurations
PRODUCT_COPY_FILES += \
    vendor/elytra/target/config/apns-conf.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/apns-conf.xml \
    vendor/elytra/target/config/sensitive_pn.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sensitive_pn.xml

# Skip boot JAR checks
SKIP_BOOT_JARS_CHECK := true

# Strip the local variable table and the local variable type table to reduce
# the size of the system image. This has no bearing on stack traces, but will
# leave less information available via JDWP.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Enable whole-program R8 Java optimizations for SystemUI and system_server,
# but also allow explicit overriding for testing and development.
SYSTEM_OPTIMIZE_JAVA ?= true
SYSTEMUI_OPTIMIZE_JAVA ?= true
