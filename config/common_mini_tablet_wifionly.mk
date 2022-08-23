# Inherit mini common Elytra stuff
$(call inherit-product, vendor/elytra/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    androidx.window.extensions \
    LatinIME
