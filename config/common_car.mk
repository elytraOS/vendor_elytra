# Inherit common Elytra stuff
$(call inherit-product, vendor/elytra/config/common.mk)

# Inherit Elytra car device tree
$(call inherit-product, device/elytra/car/elytra_car.mk)

# Inherit the main AOSP car makefile that turns this into an Automotive build
$(call inherit-product, packages/services/Car/car_product/build/car.mk)
