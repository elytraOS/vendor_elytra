# Inherit full common Elytra stuff
$(call inherit-product, vendor/elytra/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include Elytra LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/elytra/overlay/dictionaries
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/elytra/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

$(call inherit-product, vendor/elytra/config/telephony.mk)
