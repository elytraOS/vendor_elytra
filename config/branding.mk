# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2020 Fluid
# Copyright (C) 2021 ElytraOS
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Versioning System
ELYTRA_CODENAME := trident
ELYTRA_NUM_VER := 3.0

TARGET_PRODUCT_SHORT := $(subst elytra_,,$(ELYTRA_BUILD_TYPE))

ELYTRA_BUILD_TYPE ?= unofficial

# Only include Updater for official  build
ifeq ($(filter-out official,$(ELYTRA_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updater
endif

# Sign builds if building an official build
ifeq ($(filter-out official,$(ELYTRA_BUILD_TYPE)),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(KEYS_LOCATION)
endif

# Set all versions
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)
ELYTRA_BUILD_VERSION := $(ELYTRA_NUM_VER)-$(ELYTRA_CODENAME)
ELYTRA_VERSION := $(ELYTRA_BUILD_VERSION)-$(ELYTRA_BUILD)-$(ELYTRA_BUILD_TYPE)-vanilla-$(BUILD_TIME)-$(BUILD_DATE)
ifeq ($(USE_GAPPS), true)
ELYTRA_VERSION := $(ELYTRA_BUILD_VERSION)-$(ELYTRA_BUILD)-$(ELYTRA_BUILD_TYPE)-$(BUILD_TIME)-$(BUILD_DATE)
endif
ROM_FINGERPRINT := elytra/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)
ELYTRA_DISPLAY_VERSION := $(ELYTRA_VERSION)
RELEASE_TYPE := $(ELYTRA_BUILD_TYPE)
