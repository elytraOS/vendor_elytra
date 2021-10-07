# Copyright (C) 2021 elytraOS
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

ANDROID_VERSION := 12.0
ELYTRAVERSION := SKYLIGHT

ELYTRA_BUILD_TYPE ?= UNOFFICIAL
ELYTRA_DATE_YEAR := $(shell date -u +%Y)
ELYTRA_DATE_MONTH := $(shell date -u +%m)
ELYTRA_DATE_DAY := $(shell date -u +%d)
ELYTRA_DATE_HOUR := $(shell date -u +%H)
ELYTRA_DATE_MINUTE := $(shell date -u +%M)
ELYTRA_BUILD_DATE := $(ELYTRA_DATE_YEAR)$(ELYTRA_DATE_MONTH)$(ELYTRA_DATE_DAY)-$(ELYTRA_DATE_HOUR)$(ELYTRA_DATE_MINUTE)
TARGET_PRODUCT_SHORT := $(subst elytra_,,$(ELYTRA_BUILD))

# OFFICIAL_DEVICES
ifeq ($(ELYTRA_BUILD_TYPE), OFFICIAL)
  LIST = $(shell cat vendor/elytra/elytra.devices)
    ifeq ($(filter $(ELYTRA_BUILD), $(LIST)), $(ELYTRA_BUILD))
      IS_OFFICIAL=true
      ELYTRA_BUILD_TYPE := OFFICIAL
    endif
    ifneq ($(IS_OFFICIAL), true)
      ELYTRA_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(ELYTRA_BUILD)")
    endif
endif

ELYTRA_VERSION := $(ELYTRAVERSION)-$(ELYTRA_BUILD)-$(ELYTRA_BUILD_DATE)-$(ELYTRA_BUILD_TYPE)
ELYTRA_MOD_VERSION :=$(ANDROID_VERSION)-$(ELYTRAVERSION)
ELYTRA_DISPLAY_VERSION := elytraOS-$(ELYTRAVERSION)-$(ELYTRA_BUILD_TYPE)
ELYTRA_DISPLAY_BUILDTYPE := $(ELYTRA_BUILD_TYPE)
ELYTRA_FINGERPRINT := elytraOS/$(ELYTRA_MOD_VERSION)/$(TARGET_PRODUCT_SHORT)/$(ELYTRA_BUILD_DATE)

# elytra System Version
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.elytra.version=$(ELYTRA_DISPLAY_VERSION) \
  ro.elytra.build.status=$(ELYTRA_BUILD_TYPE) \
  ro.modversion=$(ELYTRA_MOD_VERSION) \
  ro.elytra.build.date=$(ELYTRA_BUILD_DATE) \
  ro.elytra.buildtype=$(ELYTRA_BUILD_TYPE) \
  ro.elytra.fingerprint=$(ELYTRA_FINGERPRINT) \
  ro.elytra.device=$(ELYTRA_BUILD) \
  org.elytra.version=$(ELYTRAVERSION)
