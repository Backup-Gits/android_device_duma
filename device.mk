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

# This file includes all definitions that apply to ALL msm8960 devices, and
# are also specific to msm8960 devices
#
# Everything in this directory will become public
# Rild
PRODUCT_PACKAGES := \
    rild \
    CarrierConfig \
    BasicSmsReceiver

PRODUCT_PROPERTY_OVERRIDES += \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so

# Catlog
PRODUCT_PACKAGES += \
    CatLog

# Cabl
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=1 \
    hw.cabl.level.Auto

#PRODUCT_PROPERTY_OVERRIDES := \
 #   ro.carrier=wifi-only
# Get the long list of APNs
PRODUCT_COPY_FILES += \
    device/asus/duma/configs/apns-conf.xml:system/etc/apns-conf.xml

# Features
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml

PRODUCT_COPY_FILES := \
    device/asus/duma/rootdir/fstab.duma:root/fstab.duma \
    device/asus/duma/rootdir/init.duma.rc:root/init.duma.rc

PRODUCT_PACKAGES += \
    camera.duma

# the actual meat of the device-specific product definition
$(call inherit-product, device/asus/duma/device-common.mk)

# inherit from the non-open-source side, if present
$(call inherit-product-if-exists, vendor/asus/duma/device-vendor.mk)

DEVICE_PACKAGE_OVERLAYS := device/asus/duma/overlay
