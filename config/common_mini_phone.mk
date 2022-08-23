# Inherit mini common Elytra stuff
$(call inherit-product, vendor/elytra/config/common_mini.mk)

# Required packages
PRODUCT_PACKAGES += \
    LatinIME

$(call inherit-product, vendor/elytra/config/telephony.mk)
