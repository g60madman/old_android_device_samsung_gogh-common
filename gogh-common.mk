#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

## The gps config appropriate for this device
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf

## (2) Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/samsung/gogh-common/gogh-common-vendor.mk)

## overlays
DEVICE_PACKAGE_OVERLAYS += device/samsung/gogh-common/overlay

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/nfc-extras/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Media config
PRODUCT_COPY_FILES += \
    device/samsung/gogh-common/configs/media_profiles.xml:system/etc/media_profiles.xml \
	device/samsung/gogh-common/configs/media_codecs.xml:system/etc/media_codecs.xml

# EGL config
PRODUCT_COPY_FILES += \
    device/samsung/gogh-common/configs/egl.cfg:system/lib/egl/egl.cfg

# Device uses high-density artwork where available
PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Audio configuration
PRODUCT_COPY_FILES += \
    device/samsung/gogh-common/audio/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/samsung/gogh-common/audio/audio_policy.conf:system/etc/audio_policy.conf

# Qualcomm Adreno 2xx User-mode Android 4.1 Jelly Bean Graphics Driver (ARMv7) (early sample)
PRODUCT_COPY_FILES += \
    device/samsung/gogh-common/system/etc/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/samsung/gogh-common/system/etc/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/samsung/gogh-common/system/etc/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/samsung/gogh-common/system/etc/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    device/samsung/gogh-common/system/etc/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw \
    device/samsung/gogh-common/system/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/samsung/gogh-common/system/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/samsung/gogh-common/system/lib/egl/eglsubAndroid.so:system/lib/egl/eglsubAndroid.so \
    device/samsung/gogh-common/system/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/samsung/gogh-common/system/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/samsung/gogh-common/system/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/samsung/gogh-common/system/lib/egl/libGLESv2S3D_adreno200.so:system/lib/egl/libGLESv2S3D_adreno200.so \
    device/samsung/gogh-common/system/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/samsung/gogh-common/system/lib/libc2d2_z180.so:system/lib/libc2d2_z180.so \
    device/samsung/gogh-common/system/lib/libC2D2.so:system/lib/libC2D2.so \
    device/samsung/gogh-common/system/lib/libgsl.so:system/lib/libgsl.so \
    device/samsung/gogh-common/system/lib/libOpenVG.so:system/lib/libOpenVG.so \
    device/samsung/gogh-common/system/lib/libsc-a2xx.so:system/lib/libsc-a2xx.so

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio_policy.msm8960 \
    audio.primary.msm8960 \
    libalsa-intf \
    libaudioutils

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8960 \
    gralloc.msm8960 \
    hwcomposer.msm8960 \
    power.msm8960

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer \
    libI420colorconvert

# Victory Kernel Settings
PRODUCT_PACKAGES += \
    libexifa \
    libjpega \
    libkeyutils \
    qcom_audio_dut \
    qcom_dut

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc

PRODUCT_PROPERTY_OVERRIDES += \
    debug.sf.hw=1 \
    debug.egl.hw=1 \
    debug.composition.type=dyn \
    debug.mdpcomp.maxlayer=3 \
    debug.mdpcomp.logs=0

# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.post_boot.sh \
    init.qcom.efs.sync.sh \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.early_boot.sh \
    init.qcom.mdm_links.sh \
    init.qcom.modem_links.sh \
    init.qcom.usb.sh \
    lpm.rc \
    init.qcom.lpm_boot.sh

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    initlogo.rle \
    init.bt.rc \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.target.rc \
    ueventd.qcom.rc

# Torch
PRODUCT_PACKAGES += Torch

# Vold configuration
PRODUCT_COPY_FILES += \
    device/samsung/gogh-common/vold.fstab:system/etc/vold.fstab

# Set default USB interface
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Lights
PRODUCT_PACKAGES += lights.msm8960

# GPS
#PRODUCT_PACKAGES += \
#	gps.msm8960

# NFC Support
PRODUCT_PACKAGES += \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag \
    com.android.nfc_extras

# NFCEE access control
ifeq ($(TARGET_BUILD_VARIANT),user)
    NFCEE_ACCESS_PATH := device/samsung/gogh-common/configs/nfcee_access.xml
else
    NFCEE_ACCESS_PATH := device/samsung/gogh-common/configs/nfcee_access_debug.xml
endif
PRODUCT_COPY_FILES += \
    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    setup_fs

# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

# for bugmailer
PRODUCT_PACKAGES += send_bug
PRODUCT_COPY_FILES += \
    system/extras/bugmailer/bugmailer.sh:system/bin/bugmailer.sh \
    system/extras/bugmailer/send_bug:system/bin/send_bug

# keylayouts
PRODUCT_COPY_FILES += \
    device/samsung/gogh-common/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/samsung/gogh-common/keylayout/Generic.kl:system/usr/keylayout/Generic.kl \
    device/samsung/gogh-common/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl\
    device/samsung/gogh-common/keylayout/cyttsp-i2c.kl:system/usr/keylayout/cyttsp-i2c.kl \
    device/samsung/gogh-common/keylayout/fsa9485.kl:system/usr/keylayout/fsa9485.kl \
    device/samsung/gogh-common/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/samsung/gogh-common/keylayout/msm8960-snd-card_Button_Jack.kl:system/usr/keylayout/msm8960-snd-card_Button_Jack.kl \
    device/samsung/gogh-common/keylayout/sec_key.kl:system/usr/keylayout/sec_key.kl \
    device/samsung/gogh-common/keylayout/sec_keys.kl:system/usr/keylayout/sec_keys.kl \
    device/samsung/gogh-common/keylayout/sec_powerkey.kl:system/usr/keylayout/sec_powerkey.kl \
    device/samsung/gogh-common/keylayout/sec_touchkey.kl:system/usr/keylayout/sec_touchkey.kl \
    device/samsung/gogh-common/keylayout/Vendor_045e_Product_028e.kl:system/usr/keylayout/Vendor_045e_Product_028e.kl \
    device/samsung/gogh-common/keylayout/Vendor_046d_Product_c216.kl:system/usr/keylayout/Vendor_046d_Product_c216.kl \
    device/samsung/gogh-common/keylayout/Vendor_046d_Product_c294.kl:system/usr/keylayout/Vendor_046d_Product_c294.kl \
    device/samsung/gogh-common/keylayout/Vendor_046d_Product_c299.kl:system/usr/keylayout/Vendor_046d_Product_c299.kl \
    device/samsung/gogh-common/keylayout/Vendor_046d_Product_c532.kl:system/usr/keylayout/Vendor_046d_Product_c532.kl \
    device/samsung/gogh-common/keylayout/Vendor_04e8_Product_7021.kl:system/usr/keylayout/Vendor_04e8_Product_7021.kl \
    device/samsung/gogh-common/keylayout/Vendor_054c_Product_0268.kl:system/usr/keylayout/Vendor_054c_Product_0268.kl \
    device/samsung/gogh-common/keylayout/Vendor_05ac_Product_0239.kl:system/usr/keylayout/Vendor_05ac_Product_0239.kl \
    device/samsung/gogh-common/keylayout/Vendor_22b8_Product_093d.kl:system/usr/keylayout/Vendor_22b8_Product_093d.kl

# Keychars
PRODUCT_COPY_FILES += \
    device/samsung/gogh-common/keychars/Generic.kcm:system/usr/keychars/Generic.kcm \
    device/samsung/gogh-common/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/samsung/gogh-common/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/samsung/gogh-common/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm

# IDC
PRODUCT_COPY_FILES += \
    device/samsung/gogh-common/idc/qwerty.idc:system/usr/idc/qwerty.idc \
    device/samsung/gogh-common/idc/qwerty2.idc:system/usr/idc/qwerty2.idc

# Needed to reset bootmode when leaving recovery
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
	$(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh

# Increase the HWUI font cache since we have tons of RAM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.text_cache_width=2048

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# QRNGD
PRODUCT_PACKAGES += qrngd

#common build.props
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    persist.radio.add_power_save=1 \
    persist.radio.snapshot_disabled=1 \
    com.qc.hardware=true \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.gps.qmienabled=true \
    ro.telephony.call_ring.multiple=0 \
    ro.sf.lcd_density=240 \
    ro.ril.transmitpower=true \
    ro.opengles.version=131072 \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    persist.audio.speaker.location=high \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.timed.enable=true \
    ro.emmc.sdcard.partition=17 \
    ro.use_data_netmgrd=true \
    persist.data_netmgrd_nint=16 \
    lpa.decode=true \
    rild.libpath=/system/lib/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM \
    ro.telephony.ril.v3=skipnullaid

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Common overlay
DEVICE_PACKAGE_OVERLAYS += device/samsung/gogh-common/overlay

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

