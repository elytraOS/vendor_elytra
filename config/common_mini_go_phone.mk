# Set Elytra specific identifier for Android Go enabled products
PRODUCT_TYPE := go

# Inherit mini common Elytra stuff
$(call inherit-product, vendor/elytra/config/common_mini_phone.mk)
