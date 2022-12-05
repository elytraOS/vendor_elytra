#
# Copyright (C) 2022 elytraOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Architecture.
TARGET_KERNEL_ARCH := arm64

# Cross Compiler.
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
TARGET_KERNEL_CROSS_COMPILE_ARM32_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/arm/arm-linux-androideabi-4.9/bin/arm-linux-androideabi-

# Enable LLVM Support.
KERNEL_LLVM_SUPPORT := true

# Qualcomm kernel.
TARGET_COMPILE_WITH_MSM_KERNEL := true
