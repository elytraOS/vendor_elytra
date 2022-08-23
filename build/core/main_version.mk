# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

ifeq ($(USE_GAPPS),true)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.elytra.ziptype=gapps
else
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.elytra.ziptype=vanilla
endif

# ElytraOS Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.elytra.display.version=$(ELYTRA_DISPLAY_VERSION) \
    ro.elytra.build.version=$(ELYTRA_BUILD_VERSION) \
    ro.elytra.build.date=$(BUILD_DATE) \
    ro.elytra.buildtype=$(ELYTRA_BUILD_TYPE) \
    ro.elytra.fingerprint=$(ROM_FINGERPRINT) \
    ro.elytra.version=$(ELYTRA_VERSION) \
    ro.elytra.base.codename=$(ELYTRA_CODENAME) \
    ro.elytra.base.version=$(ELYTRA_NUM_VER) \
    ro.modversion=$(ELYTRA_VERSION)
