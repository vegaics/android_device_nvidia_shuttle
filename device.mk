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

# This file includes all definitions that apply to ALL shuttle devices, and
# are also specific to shuttle devices
#
# Everything in this directory will become public

LOCAL_PATH := device/nvidia/shuttle

LOCAL_KERNEL := $(LOCAL_PATH)/kernel/zImage

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# uses mdpi artwork where available
PRODUCT_AAPT_CONFIG := normal mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi
PRODUCT_LOCALES += mdpi

# Shuttle/Harmony Configs
PRODUCT_COPY_FILES := \
    $(LOCAL_KERNEL):kernel \
    $(LOCAL_PATH)/files/init.shuttle.rc:root/init.shuttle.rc \
    $(LOCAL_PATH)/files/init.shuttle.usb.rc:root/init.shuttle.usb.rc \
    $(LOCAL_PATH)/files/ueventd.shuttle.rc:root/ueventd.shuttle.rc \
    $(LOCAL_PATH)/files/initlogo.rle:root/initlogo.rle

# Backlight
PRODUCT_PACKAGES := \
	lights.shuttle \
	charger \
	charger_res_images

# Accelerometer
PRODUCT_PACKAGES += \
	sensors.shuttle 

# Camera
PRODUCT_PACKAGES += \
	camera.shuttle 
	
# GPS
PRODUCT_PACKAGES += \
	gps.shuttle 
	
# Audio
PRODUCT_PACKAGES += \
	audio.primary.shuttle \
	audio.a2dp.default \
	libaudioutils
	
# Touchscreen
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/it7260.idc:system/usr/idc/it7260.idc 

# Graphics
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/files/media_profiles.xml:system/etc/media_profiles.xml

# Huawei 3G modem propietary files
PRODUCT_PACKAGES += \
	libhuaweigeneric-ril

# Generic
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/files/vold.fstab:system/etc/vold.fstab \
   $(LOCAL_PATH)/files/su:system/xbin/su \
   $(LOCAL_PATH)/files/su:system/bin/su \
   $(LOCAL_PATH)/files/busybox:system/bin/busybox \
   $(LOCAL_PATH)/files/vega_postboot.sh:system/etc/vega_postboot.sh \
   $(LOCAL_PATH)/files/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
   $(LOCAL_PATH)/files/vold.fstab:system/etc/vold.fstab \
   $(LOCAL_PATH)/files/setrecovery:system/bin/setrecovery \
   $(LOCAL_PATH)/files/recovery:system/bin/recovery 
   
# APNs list
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/files/apns-conf.xml:system/etc/apns-conf.xml

PRODUCT_PACKAGES += \
	shuttle_hdcp_keys

# NVIDIA blob necessary for wingray hardware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/nvmm_aacdec.axf:system/etc/firmware/nvmm_aacdec.axf \
    $(LOCAL_PATH)/proprietary/nvddk_audiofx_core.axf:system/etc/firmware/nvddk_audiofx_core.axf \
    $(LOCAL_PATH)/proprietary/nvddk_audiofx_transport.axf:system/etc/firmware/nvddk_audiofx_transport.axf \
    $(LOCAL_PATH)/proprietary/nvmm_adtsdec.axf:system/etc/firmware/nvmm_adtsdec.axf \
    $(LOCAL_PATH)/proprietary/nvmm_audiomixer.axf:system/etc/firmware/nvmm_audiomixer.axf \
    $(LOCAL_PATH)/proprietary/nvmm_h264dec.axf:system/etc/firmware/nvmm_h264dec.axf \
    $(LOCAL_PATH)/proprietary/nvmm_jpegdec.axf:system/etc/firmware/nvmm_jpegdec.axf \
    $(LOCAL_PATH)/proprietary/nvmm_jpegenc.axf:system/etc/firmware/nvmm_jpegenc.axf \
    $(LOCAL_PATH)/proprietary/nvmm_manager.axf:system/etc/firmware/nvmm_manager.axf \
    $(LOCAL_PATH)/proprietary/nvmm_mp2dec.axf:system/etc/firmware/nvmm_mp2dec.axf \
    $(LOCAL_PATH)/proprietary/nvmm_mp3dec.axf:system/etc/firmware/nvmm_mp3dec.axf \
    $(LOCAL_PATH)/proprietary/nvmm_mpeg4dec.axf:system/etc/firmware/nvmm_mpeg4dec.axf \
    $(LOCAL_PATH)/proprietary/nvmm_reference.axf:system/etc/firmware/nvmm_reference.axf \
    $(LOCAL_PATH)/proprietary/nvmm_service.axf:system/etc/firmware/nvmm_service.axf \
    $(LOCAL_PATH)/proprietary/nvmm_sorensondec.axf:system/etc/firmware/nvmm_sorensondec.axf \
    $(LOCAL_PATH)/proprietary/nvmm_sw_mp3dec.axf:system/etc/firmware/nvmm_sw_mp3dec.axf \
    $(LOCAL_PATH)/proprietary/nvmm_wavdec.axf:system/etc/firmware/nvmm_wavdec.axf \
    $(LOCAL_PATH)/proprietary/nvrm_avp.bin:system/etc/firmware/nvrm_avp.bin \
    $(LOCAL_PATH)/proprietary/libEGL_tegra.so:system/lib/egl/libEGL_tegra.so \
    $(LOCAL_PATH)/proprietary/libGLESv1_CM_tegra.so:system/lib/egl/libGLESv1_CM_tegra.so \
    $(LOCAL_PATH)/proprietary/libGLESv2_tegra.so:system/lib/egl/libGLESv2_tegra.so \
    $(LOCAL_PATH)/proprietary/gralloc.tegra.so:system/lib/hw/gralloc.tegra.so \
    $(LOCAL_PATH)/proprietary/hwcomposer.tegra.so:system/lib/hw/hwcomposer.tegra.so \
    $(LOCAL_PATH)/proprietary/libcgdrv.so:system/lib/libcgdrv.so \
    $(LOCAL_PATH)/proprietary/libnvddk_2d.so:system/lib/libnvddk_2d.so \
    $(LOCAL_PATH)/proprietary/libnvddk_2d_v2.so:system/lib/libnvddk_2d_v2.so \
    $(LOCAL_PATH)/proprietary/libnvddk_audiofx.so:system/lib/libnvddk_audiofx.so \
    $(LOCAL_PATH)/proprietary/libnvdispatch_helper.so:system/lib/libnvdispatch_helper.so \
    $(LOCAL_PATH)/proprietary/libnvdispmgr_d.so:system/lib/libnvdispmgr_d.so \
    $(LOCAL_PATH)/proprietary/libnvmm.so:system/lib/libnvmm.so \
    $(LOCAL_PATH)/proprietary/libnvmm_camera.so:system/lib/libnvmm_camera.so \
    $(LOCAL_PATH)/proprietary/libnvmm_contentpipe.so:system/lib/libnvmm_contentpipe.so \
    $(LOCAL_PATH)/proprietary/libnvmm_image.so:system/lib/libnvmm_image.so \
    $(LOCAL_PATH)/proprietary/libnvmm_manager.so:system/lib/libnvmm_manager.so \
    $(LOCAL_PATH)/proprietary/libnvmm_service.so:system/lib/libnvmm_service.so \
    $(LOCAL_PATH)/proprietary/libnvmm_tracklist.so:system/lib/libnvmm_tracklist.so \
    $(LOCAL_PATH)/proprietary/libnvmm_utils.so:system/lib/libnvmm_utils.so \
    $(LOCAL_PATH)/proprietary/libnvmm_video.so:system/lib/libnvmm_video.so \
    $(LOCAL_PATH)/proprietary/libnvomx.so:system/lib/libnvomx.so \
    $(LOCAL_PATH)/proprietary/libnvomxilclient.so:system/lib/libnvomxilclient.so \
    $(LOCAL_PATH)/proprietary/libnvos.so:system/lib/libnvos.so \
    $(LOCAL_PATH)/proprietary/libnvrm.so:system/lib/libnvrm.so \
    $(LOCAL_PATH)/proprietary/libnvrm_channel.so:system/lib/libnvrm_channel.so \
    $(LOCAL_PATH)/proprietary/libnvrm_graphics.so:system/lib/libnvrm_graphics.so \
    $(LOCAL_PATH)/proprietary/libnvsm.so:system/lib/libnvsm.so \
    $(LOCAL_PATH)/proprietary/libnvwsi.so:system/lib/libnvwsi.so \
    $(LOCAL_PATH)/proprietary/libardrv_dynamic.so:system/lib/libardrv_dynamic.so \
    $(LOCAL_PATH)/proprietary/libstagefrighthw.so:system/lib/libstagefrighthw.so
	
	
# Bluetooth configuration files
PRODUCT_COPY_FILES += \
	system/bluetooth/data/main.le.conf:system/etc/bluetooth/main.conf

# Wifi
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/wlan/ar6000.ko:system/lib/hw/wlan/ar6000.ko \
	$(LOCAL_PATH)/wlan/athtcmd_ram.bin:system/lib/hw/wlan/athtcmd_ram.bin \
	$(LOCAL_PATH)/wlan/athwlan.bin.z77:system/lib/hw/wlan/athwlan.bin.z77 \
	$(LOCAL_PATH)/wlan/data.patch.hw2_0.bin:system/lib/hw/wlan/data.patch.hw2_0.bin \
	$(LOCAL_PATH)/wlan/device.bin:system/lib/hw/wlan/device.bin \
	$(LOCAL_PATH)/wlan/eeprom.bin:system/lib/hw/wlan/eeprom.bin \
	$(LOCAL_PATH)/wlan/eeprom.data:system/lib/hw/wlan/eeprom.data \
	$(LOCAL_PATH)/wlan/abtfilt:system/bin/abtfilt

PRODUCT_PROPERTY_OVERRIDES := \
    wifi.interface=wlan0 \
    ro.sf.lcd_density=160 \
    wifi.supplicant_scan_interval=15

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp

# NFC
#PRODUCT_PACKAGES += \
#        libnfc \
#        libnfc_jni \
#        Nfc \
#        Tag

# Live Wallpapers
PRODUCT_PACKAGES += \
	HoloSpiralWallpaper \
PRODUCT_PACKAGES += \
        libnfc \
        libnfc_jni \
        Nfc \
        Tag

# Live Wallpapers
PRODUCT_PACKAGES += \
	HoloSpiralWallpaper \
        LiveWallpapers \
        LiveWallpapersPicker \
        VisualizationWallpapers \
        librs_jni

# Input device calibration files
PRODUCT_COPY_FILES += \
	device/nvidia/shuttle/it7260.idc:system/usr/idc/it7260.idc

# These are the hardware-specific feature permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/base/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml 

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=160

ADDITIONAL_DEFAULT_PROPERTIES += \
	ro.secure=0 

PRODUCT_CHARACTERISTICS := tablet


PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
	librs_jni \
	com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
	setup_fs

# Add prebuild apks and superuser
PRODUCT_PACKAGES += \
	ShuttleTools \
	recovery-reboot \
	Superuser \
	su

# for bugmailer
#ifneq ($(TARGET_BUILD_VARIANT),user)
#	PRODUCT_PACKAGES += send_bug
#	PRODUCT_COPY_FILES += \
#		system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
#		system/extras/bugmailer/send_bug:system/bin/send_bug
#endif

$(call inherit-product, frameworks/base/build/tablet-dalvik-heap.mk)
#$(call inherit-product, vendor/nvidia/shuttle/device-vendor.mk)
