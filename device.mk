#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Include package config fragments
include $(LOCAL_PATH)/product/*.mk

$(call inherit-product-if-exists, vendor/zte/fujisan/fujisan-vendor.mk)

# Ubuntu Overlay Files
#
PRODUCT_COPY_FILES += \
    device/zte/fujisan/ubuntu/70-android.rules:system/halium/lib/udev/rules.d/70-android.rules \
    device/zte/fujisan/ubuntu/android.conf:system/halium/etc/ubuntu-touch-session.d/android.conf \
    $(LOCAL_PATH)/ubuntu/timekeeper.conf:system/halium/etc/init/timekeeper.conf \
    $(LOCAL_PATH)/ubuntu/apparmor.d/local/usr.bin.media-hub-server:system/halium/etc/apparmor.d/local/usr.bin.media-hub-server \
    $(LOCAL_PATH)/ubuntu/apparmor.d/abstractions/base:system/halium/etc/apparmor.d/abstractions/base \
    $(LOCAL_PATH)/ubuntu/init_hcismd_up.sh:system/etc/init_hcismd_up.sh

# UBPorts
PRODUCT_PACKAGES += \
    libminisf \
    minimediaservice
