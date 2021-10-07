include vendor/elytra/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/elytra/config/BoardConfigQcom.mk
endif

include vendor/elytra/config/BoardConfigSoong.mk
