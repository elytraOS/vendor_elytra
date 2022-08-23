# Inherit full common Elytra stuff
$(call inherit-product, vendor/elytra/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    LatinIME

# Include Elytra LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/elytra/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/elytra/overlay/dictionaries
