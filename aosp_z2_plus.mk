#
# Copyright 2015 The Android Open Source Project
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

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Provide meaningful APN configuration
PRODUCT_COPY_FILES := device/zuk/z2_plus/apns-full-conf.xml:system/etc/apns-conf.xml

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

PRODUCT_NAME := aosp_z2_plus
PRODUCT_DEVICE := z2_plus
PRODUCT_BRAND := Zuk
PRODUCT_MODEL := Z2 Plus
PRODUCT_MANUFACTURER := Zuk
PRODUCT_RESTRICT_VENDOR_FILES := true
TARGET_VENDOR := Zuk

PRODUCT_GMS_CLIENTID_BASE := android-zuk

PRODUCT_COPY_FILES += device/zuk/z2_plus/fstab.common:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.z2_plus

$(call inherit-product, device/zuk/z2_plus/device-z2_plus.mk)
$(call inherit-product-if-exists, vendor/zuk/z2_plus/device-vendor-z2_plus.mk)

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="z2_plus" \
    PRODUCT_NAME="z2_plus" \
    BUILD_FINGERPRINT="ZUK/z2_plus/z2_plus:7.0/NRD90M/2.5.412_170428:user/release-keys" \
    PRIVATE_BUILD_DESC="z2_plus-user 7.0 NRD90M 2.5.412_170428 release-keys"

PRODUCT_PACKAGES += \
    Launcher3 \
    WallpaperPicker

