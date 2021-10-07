# Inherit common elytra stuff
$(call inherit-product, vendor/elytra/config/common_mobile.mk)

PRODUCT_SIZE := full

# Recorder
PRODUCT_PACKAGES += \
    Recorder
