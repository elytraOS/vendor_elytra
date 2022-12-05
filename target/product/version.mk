#
# Copyright (C) 2022 elytraOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Versioning System
ELYTRA_CODENAME := Tesseract
ELYTRA_MAJOR_VERSION := 2
ELYTRA_BUILD_VARIANT := Beta
ELYTRA_BUILD_TYPE ?= UNOFFICIAL

# elytra Release
ifeq ($(ELYTRA_BUILD_TYPE), OFFICIAL)
  OFFICIAL_DEVICES = $(shell cat vendor/elytra/products/elytra.devices)
  FOUND_DEVICE =  $(filter $(ELYTRA_BUILD), $(OFFICIAL_DEVICES))
    ifeq ($(FOUND_DEVICE),$(ELYTRA_BUILD))
      ELYTRA_BUILD_TYPE := OFFICIAL
    else
      ELYTRA_BUILD_TYPE := UNOFFICIAL
      $(error Device is not official "$(ELYTRA_BUILD)")
    endif
endif

# System version
TARGET_PRODUCT_SHORT := $(subst elytra_,,$(ELYTRA_BUILD_TYPE))

ELYTRA_DATE_YEAR := $(shell date -u +%Y)
ELYTRA_DATE_MONTH := $(shell date -u +%m)
ELYTRA_DATE_DAY := $(shell date -u +%d)
ELYTRA_DATE_HOUR := $(shell date -u +%H)
ELYTRA_DATE_MINUTE := $(shell date -u +%M)

ELYTRA_BUILD_DATE := $(ELYTRA_DATE_YEAR)$(ELYTRA_DATE_MONTH)$(ELYTRA_DATE_DAY)-$(ELYTRA_DATE_HOUR)$(ELYTRA_DATE_MINUTE)
ELYTRA_BUILD_VERSION := $(ELYTRA_BUILD_VARIANT)-$(ELYTRA_MAJOR_VERSION)
ELYTRA_VERSION := elytra-$(ELYTRA_CODENAME)-$(ELYTRA_BUILD_VERSION)-$(ELYTRA_BUILD)-$(ELYTRA_BUILD_TYPE)-$(ELYTRA_BUILD_DATE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.elytra.codename=$(ELYTRA_CODENAME) \
  ro.elytra.device=$(ELYTRA_BUILD) \
  ro.elytra.version=$(ELYTRA_VERSION) \
  ro.elytra.version.major=$(ELYTRA_MAJOR_VERSION) \
  ro.elytra.build.date=$(ELYTRA_BUILD_DATE) \
  ro.elytra.build.type=$(ELYTRA_BUILD_TYPE) \
  ro.elytra.build.variant=$(ELYTRA_BUILD_VARIANT) \
  ro.elytra.build.version=$(ELYTRA_BUILD_VERSION)
