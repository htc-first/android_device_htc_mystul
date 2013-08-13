#
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common 8960 configs
$(call inherit-product, device/htc/msm8960-common/msm8960.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/totemc2/overlay

# Boot ramdisk setup
PRODUCT_PACKAGES += \
    fstab.qcom \
    remount.qcom \
    init.qcom.sh \
    init.qcom.rc \
    init.qcom.usb.rc \
    ueventd.qcom.rc

# Qualcomm scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/init.qcom.bt.sh:/system/etc/init.qcom.bt.sh \
    $(LOCAL_PATH)/configs/init.qcom.fm.sh:/system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/configs/init.qcom.post_boot.sh:/system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/configs/init.qcom.q6_links.sh:/system/etc/init.qcom.q6_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.radio_links.sh:/system/etc/init.qcom.radio_links.sh \
    $(LOCAL_PATH)/configs/init.qcom.sdio.sh:/system/etc/init.qcom.sdio.sh \
    $(LOCAL_PATH)/configs/init.qcom.wifi.sh:/system/etc/init.qcom.wifi.sh

# HTC BT audio config
PRODUCT_COPY_FILES += device/htc/totemc2/configs/AudioBTID.csv:system/etc/AudioBTID.csv

# NFCEE access control
#ifeq ($(TARGET_BUILD_VARIANT),user)
#    NFCEE_ACCESS_PATH := device/htc/totemc2/configs/nfcee_access.xml
#else
#    NFCEE_ACCESS_PATH := device/htc/totemc2/configs/nfcee_access_debug.xml
#endif
#PRODUCT_COPY_FILES += \
#    $(NFCEE_ACCESS_PATH):system/etc/nfcee_access.xml

# Camera
PRODUCT_PACKAGES += \
    camera.msm8930

# GPS
PRODUCT_PACKAGES += \
    gps.msm8930

# Recovery
PRODUCT_PACKAGES += \
    init.recovery.qcom.rc \
    choice_fn \
    power_test \
    offmode_charging \
    detect_key

# wifi config
PRODUCT_COPY_FILES += \
    device/htc/totemc2/firmware/fw_bcm4334.bin:/system/etc/firmware/fw_bcm4334.bin \
    device/htc/totemc2/firmware/fw_bcm4334_apsta.bin:/system/etc/firmware/fw_bcm4334_apsta.bin \
    device/htc/totemc2/firmware/fw_bcm4334_p2p.bin:/system/etc/firmware/fw_bcm4334_p2p.bin \
    device/htc/totemc2/firmware/BCM4334B0_002.001.013.0488.0604.hcd:/system/etc/firmware/BCM4334B0_002.001.013.0488.0604.hcd

# Sound configs
PRODUCT_COPY_FILES += \
    device/htc/totemc2/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    device/htc/totemc2/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    device/htc/totemc2/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    device/htc/totemc2/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    device/htc/totemc2/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    device/htc/totemc2/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    device/htc/totemc2/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg

PRODUCT_COPY_FILES += \
    device/htc/totemc2/dsp/snd_soc_msm/snd_soc_msm_2x:/system/etc/snd_soc_msm/snd_soc_msm_2x \
    device/htc/totemc2/dsp/snd_soc_msm/snd_soc_msm_Sitar:/system/etc/snd_soc_msm/snd_soc_msm_Sitar

# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/totemc2/keylayout/synaptics-rmi-touchscreen.kl:system/usr/keylayout/synaptics-rmi-touchscreen.kl \
    device/htc/totemc2/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/totemc2/keylayout/keypad_8960.kl:system/usr/keylayout/keypad_8960.kl \
    device/htc/totemc2/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
    device/htc/totemc2/idc/synaptics-rmi-touchscreen.idc:system/usr/idc/synaptics-rmi-touchscreen.idc \
    device/htc/totemc2/idc/projector_input.idc:system/usr/idc/projector_input.idc

# MSM8930 firmware
PRODUCT_COPY_FILES += \
    device/htc/totemc2/firmware/a300_pm4.fw:/system/etc/firmware/a300_pm4.fw \
    device/htc/totemc2/firmware/a300_pfp.fw:/system/etc/firmware/a300_pfp.fw \
    device/htc/totemc2/firmware/modem_fw.b00:/system/etc/firmware/modem_fw.b00 \
    device/htc/totemc2/firmware/modem_fw.b01:/system/etc/firmware/modem_fw.b01 \
    device/htc/totemc2/firmware/modem_fw.b02:/system/etc/firmware/modem_fw.b02 \
    device/htc/totemc2/firmware/modem_fw.b03:/system/etc/firmware/modem_fw.b03 \
    device/htc/totemc2/firmware/modem_fw.b04:/system/etc/firmware/modem_fw.b04 \
    device/htc/totemc2/firmware/modem_fw.b05:/system/etc/firmware/modem_fw.b05 \
    device/htc/totemc2/firmware/modem_fw.b06:/system/etc/firmware/modem_fw.b06 \
    device/htc/totemc2/firmware/modem_fw.b07:/system/etc/firmware/modem_fw.b07 \
    device/htc/totemc2/firmware/modem_fw.b08:/system/etc/firmware/modem_fw.b08 \
    device/htc/totemc2/firmware/modem_fw.b09:/system/etc/firmware/modem_fw.b09 \
    device/htc/totemc2/firmware/modem_fw.b10:/system/etc/firmware/modem_fw.b10 \
    device/htc/totemc2/firmware/modem_fw.b11:/system/etc/firmware/modem_fw.b11 \
    device/htc/totemc2/firmware/modem_fw.b13:/system/etc/firmware/modem_fw.b13 \
    device/htc/totemc2/firmware/modem_fw.b14:/system/etc/firmware/modem_fw.b14 \
    device/htc/totemc2/firmware/modem_fw.b21:/system/etc/firmware/modem_fw.b21 \
    device/htc/totemc2/firmware/modem_fw.b22:/system/etc/firmware/modem_fw.b22 \
    device/htc/totemc2/firmware/modem_fw.b23:/system/etc/firmware/modem_fw.b23 \
    device/htc/totemc2/firmware/modem_fw.b25:/system/etc/firmware/modem_fw.b25 \
    device/htc/totemc2/firmware/modem_fw.b26:/system/etc/firmware/modem_fw.b26 \
    device/htc/totemc2/firmware/modem_fw.b29:/system/etc/firmware/modem_fw.b29 \
    device/htc/totemc2/firmware/modem_fw.mdt:/system/etc/firmware/modem_fw.mdt \
    device/htc/totemc2/firmware/modem.b00:/system/etc/firmware/modem.b00 \
    device/htc/totemc2/firmware/modem.b01:/system/etc/firmware/modem.b01 \
    device/htc/totemc2/firmware/modem.b02:/system/etc/firmware/modem.b02 \
    device/htc/totemc2/firmware/modem.b03:/system/etc/firmware/modem.b03 \
    device/htc/totemc2/firmware/modem.b04:/system/etc/firmware/modem.b04 \
    device/htc/totemc2/firmware/modem.b05:/system/etc/firmware/modem.b05 \
    device/htc/totemc2/firmware/modem.b06:/system/etc/firmware/modem.b06 \
    device/htc/totemc2/firmware/modem.b07:/system/etc/firmware/modem.b07 \
    device/htc/totemc2/firmware/modem.b08:/system/etc/firmware/modem.b08 \
    device/htc/totemc2/firmware/modem.b09:/system/etc/firmware/modem.b09 \
    device/htc/totemc2/firmware/modem.b10:/system/etc/firmware/modem.b10 \
    device/htc/totemc2/firmware/modem.mdt:/system/etc/firmware/modem.mdt \
    device/htc/totemc2/firmware/q6.b00:/system/etc/firmware/q6.b00 \
    device/htc/totemc2/firmware/q6.b01:/system/etc/firmware/q6.b01 \
    device/htc/totemc2/firmware/q6.b03:/system/etc/firmware/q6.b03 \
    device/htc/totemc2/firmware/q6.b04:/system/etc/firmware/q6.b04 \
    device/htc/totemc2/firmware/q6.b05:/system/etc/firmware/q6.b05 \
    device/htc/totemc2/firmware/q6.b06:/system/etc/firmware/q6.b06 \
    device/htc/totemc2/firmware/q6.mdt:/system/etc/firmware/q6.mdt

# Audio config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# Thermal config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf

# GPS config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/gps.conf:system/etc/gps.conf

# Recovery
PRODUCT_COPY_FILES += \
    device/htc/totemc2/rootdir/etc/fstab.qcom:recovery/root/fstab.qcom

# Torch
PRODUCT_PACKAGES += \
    Torch

# Extra properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y \
    persist.gps.qmienabled=true \
    ro.baseband.arch=msm \
    ro.telephony.ril_class=HTCQualcommRIL \
    ro.telephony.ril.v3=skipradiooff

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Set build date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/totemc2/totemc2-vendor.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

# Discard inherited values and use our own instead.
PRODUCT_DEVICE := totemc2
PRODUCT_NAME := totemc2
PRODUCT_BRAND := htc
PRODUCT_MODEL := One VX 
PRODUCT_MANUFACTURER := HTC
