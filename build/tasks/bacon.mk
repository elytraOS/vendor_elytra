#
# Copyright (C) 2022 elytraOS
#
# SPDX-License-Identifier: Apache-2.0
#

ELYTRA_TARGET_PACKAGE := $(PRODUCT_OUT)/$(ELYTRA_VERSION).zip

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(ELYTRA_TARGET_PACKAGE)
	$(hide) sha256sum $(ELYTRA_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(ELYTRA_TARGET_PACKAGE).sha256sum
	@echo "Package Complete: $(ELYTRA_TARGET_PACKAGE)" >&2
