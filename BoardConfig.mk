#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# Use the non-open-source parts, if they're present
-include vendor/nvidia/shuttle/BoardConfigVendor.mk

#TARGET_NO_RECOVERY := true
TARGET_NO_BOOTLOADER := true
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
#TARGET_HAVE_TEGRA_ERRATA_657451 := true
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_BASE := 0x10000000
#Stock CMDLINE
BOARD_KERNEL_CMDLINE := panic=10 mem=512M@0M nvmem=128M@512M vmalloc=256M video=tegrafb console=ttyS0,115200n8 usbcore.old_scheme_first=1  mtdparts=tegra_nand:2048K@6784K(misc),5120K@9344K(recovery),8192K@14976K(boot),155008K@23680K(system),32768K@179200K(cache),4096K@212480K(staging),306688K@217088K(userdata)
BOARD_PAGE_SIZE := 0x00000800

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra
TARGET_BOOTLOADER_BOARD_NAME := shuttle
#TARGET_BOARD_INFO_FILE := device/nvidia/shuttle/board-info.txt

BOARD_EGL_CFG := device/nvidia/shuttle/files/egl.cfg

BOARD_USES_OVERLAY := true
USE_OPENGL_RENDERER := true

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x01000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0c800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Wifi related defines
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
WPA_SUPPLICANT_VERSION      := VER_0_8_X
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_atheros
BOARD_HOSTAPD_DRIVER        := AR6000
BOARD_WLAN_DEVICE           := ar6002

#BOARD_WLAN_ATHEROS_SDK      := AR6kSDK.2.2.1.151
#WIFI_DRIVER_FW_PATH_PARAM   := "/sys/module/bcmdhd/parameters/firmware_path"

WIFI_DRIVER_MODULE_PATH     := "/system/lib/hw/wlan/ar6000.ko"
WIFI_DRIVER_MODULE_NAME		:= "ar6000"
WIFI_DRIVER_MODULE_ARG		:= ""
WIFI_DRIVER_LOADER_DELAY	:= 3000000

# 3G
BOARD_MOBILEDATA_INTERFACE_NAME := "ppp0"

#BT
BOARD_HAVE_BLUETOOTH := true
#BOARD_HAVE_BLUETOOTH_BCM := true

#GPS
BOARD_HAVE_GPS := true


#Other tweaks
BOARD_USE_SCREENCAP := true
PRODUCT_CHARACTERISTICS := tablet
BOARD_USES_SECURE_SERVICES := true
# Use a smaller subset of system fonts to keep image size lower
SMALLER_FONT_FOOTPRINT := true
# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true
TARGET_RECOVERY_PRE_COMMAND := "setrecovery boot-recovery recovery"
BOARD_HDMI_MIRROR_MODE := Scale
# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION := true
