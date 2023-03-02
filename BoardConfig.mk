#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

# Firmware
-include vendor/xiaomi/munch-firmware/BoardConfigVendor.mk

DEVICE_PATH := device/xiaomi/munch

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG := munch_defconfig
TARGET_KERNEL_ARCH := arm64
KERNEL_LD := LD=ld.lld
TARGET_KERNEL_CLANG_COMPILE := true
TARGET_KERNEL_ADDITIONAL_FLAGS += LLVM=1 LLVM_IAS=1
TARGET_KERNEL_ADDITIONAL_FLAGS := LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump STRIP=llvm-strip
TARGET_KERNEL_ADDITIONAL_FLAGS += HOSTCFLAGS="-fuse-ld=lld -Wno-unused-command-line-argument"

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_munch
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_munch

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Inherit from the proprietary version
include vendor/xiaomi/munch/BoardConfigVendor.mk
