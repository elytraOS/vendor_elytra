#
# Copyright (C) 2022 elytraOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
PRODUCT_PACKAGES += \
    ElytraFrameworksOverlay \
    ElytraImmersiveNavigationOverlay \
    ElytraSettingsOverlay \
    ElytraSettingsProviderOverlay \
    ElytraSystemUIOverlay \
    ElytraLauncherOverlay \
    FontGoogleSansLatoOverlay \
    FontHarmonySansOverlay \
    FontInterOverlay \
    FontManropeOverlay \
    FontRobotoOverlay \
    FontUrbanistOverlay \
    IconPackCircularAndroidOverlay \
    IconPackCircularLauncherOverlay \
    IconPackCircularSettingsOverlay \
    IconPackCircularSystemUIOverlay \
    IconPackCircularThemePickerOverlay \
    IconPackVictorAndroidOverlay \
    IconPackVictorLauncherOverlay \
    IconPackVictorSettingsOverlay \
    IconPackVictorSystemUIOverlay \
    IconPackVictorThemePickerOverlay \
    IconPackSamAndroidOverlay \
    IconPackSamLauncherOverlay \
    IconPackSamSettingsOverlay \
    IconPackSamSystemUIOverlay \
    IconPackSamThemePickerOverlay \
    IconPackKaiAndroidOverlay \
    IconPackKaiLauncherOverlay \
    IconPackKaiSettingsOverlay \
    IconPackKaiSystemUIOverlay \
    IconPackKaiThemePickerOverlay \
    IconPackFilledAndroidOverlay \
    IconPackFilledLauncherOverlay \
    IconPackFilledSettingsOverlay \
    IconPackFilledSystemUIOverlay \
    IconPackFilledThemePickerOverlay \
    IconPackRoundedAndroidOverlay \
    IconPackRoundedLauncherOverlay \
    IconPackRoundedSettingsOverlay \
    IconPackRoundedSystemUIOverlay \
    IconPackRoundedThemePickerOverlay

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += vendor/elytra/overlay/static
PRODUCT_PACKAGE_OVERLAYS += vendor/elytra/overlay/static
