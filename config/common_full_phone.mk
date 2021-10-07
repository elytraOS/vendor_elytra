# Inherit full common elytra stuff
$(call inherit-product, vendor/elytra/config/common_full.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

# Include elytra LatinIME dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/elytra/overlay/dictionaries

# Enable support of one-handed mode
PRODUCT_PRODUCT_PROPERTIES += \
    ro.support_one_handed_mode=true

$(call inherit-product, vendor/elytra/config/telephony.mk)
