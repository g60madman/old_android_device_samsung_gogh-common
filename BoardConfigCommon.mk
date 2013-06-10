# Copyright (C) 2013 The CyanogenMod Project
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

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#


# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

TARGET_SPECIFIC_HEADER_PATH := device/samsung/gogh-common/include

BOARD_VENDOR := samsung

# Bootloader
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_SMP := true
TARGET_BOOTLOADER_BOARD_NAME := MSM8960

# Enable WEBGL in WebKit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Flags
COMMON_GLOBAL_CFLAGS += -D__ARM_USE_PLD -D__ARM_CACHE_LINE_SIZE=64
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Krait optimizations
TARGET_USE_KRAIT_BIONIC_OPTIMIZATION := true
TARGET_USE_KRAIT_PLD_SET := true
TARGET_KRAIT_BIONIC_PLDOFFS := 10
TARGET_KRAIT_BIONIC_PLDTHRESH := 10
TARGET_KRAIT_BIONIC_BBTHRESH := 64
TARGET_KRAIT_BIONIC_PLDSIZE := 64

# Kernel
TARGET_KERNEL_SOURCE        := kernel/samsung/goghvmu
BOARD_KERNEL_CMDLINE        := androidboot.hardware=qcom user_debug=31 zcache
BOARD_KERNEL_BASE           := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_KERNEL_PAGESIZE       := 2048

# Compatibilty with ICS drivers
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB 
BOARD_LEGACY_NL80211_STA_EVENTS := true

# Wifi related defines

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true

# NFC
BOARD_HAVE_NFC := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
BOARD_EGL_CFG := device/samsung/gogh-common/configs/egl.cfg

# GPS
#BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8960

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Camera
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_HARDWARE
BOARD_CAMERA_USE_MM_HEAP := true

# Workaround to avoid issues with legacy liblights on QCOM platforms
TARGET_PROVIDES_LIBLIGHTS := true

# Audio
BOARD_USES_ALSA_AUDIO := true
BOARD_HAVE_SAMSUNG_AUDIO := true

# Workaround for missing symbols in camera
BOARD_NEEDS_MEMORYHEAPPMEM := true

# Recovery
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/gogh-common/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/gogh-common/recovery/recovery_keys.c
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_USES_MMCUTILS := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/samsung/gogh-common/recovery.fstab

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072

# Disable initlogo, Samsungs framebuffer is weird
TARGET_NO_INITLOGO := true

# HAX
#BOARD_USE_SAMSUNG_SEPARATEDSTREAM := true
#BOARD_USES_LIBMEDIA_WITH_AUDIOPARAMETER := true
#TARGET_PROVIDES_LIBAUDIO := true

# Use Audience A2220 chip
BOARD_HAVE_AUDIENCE_A2220 := true

# Use USB Dock Audio
#BOARD_HAVE_DOCK_USBAUDIO := true

