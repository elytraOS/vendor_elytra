# Inherit common Elytra stuff
$(call inherit-product, vendor/elytra/config/common.mk)

# Inherit Elytra atv device tree
$(call inherit-product, device/elytra/atv/elytra_atv.mk)

# AOSP packages
PRODUCT_PACKAGES += \
    LeanbackIME

# Elytra packages
PRODUCT_PACKAGES += \
    LineageCustomizer

PRODUCT_PACKAGE_OVERLAYS += vendor/elytra/overlay/tv
