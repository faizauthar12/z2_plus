#
# Copyright (C) 2016 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL msm8996 devices
#
# Everything in this directory will become public

PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 480dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

-include device/zuk/z2_plus/device-common.mk

# Overlay
DEVICE_PACKAGE_OVERLAYS += device/zuk/z2_plus/z2_plus/overlay

# display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=480

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.vc_call_vol_steps=7

# HWUI cache sizes
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.path_cache_size=32

PRODUCT_COPY_FILES += \
    device/zuk/z2_plus/fstab.common:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.z2_plus \
    device/zuk/z2_plus/init.recovery.common.rc:root/init.recovery.z2_plus.rc

# Sensor packages
PRODUCT_PACKAGES += \
    sensors.z2_plus \
    activity_recognition.z2_plus

# Led packages
PRODUCT_PACKAGES += \
    lights.msm8996

# Thermal packages
PRODUCT_PACKAGES += \
    thermal.msm8996

# VR packages
PRODUCT_PACKAGES += \
    vr.msm8996

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprint.msm8996
