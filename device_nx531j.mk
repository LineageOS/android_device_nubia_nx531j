# Copyright (C) 2016 The CyanogenMod Project
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

$(call inherit-product-if-exists, vendor/zte/nx531j/nx531j-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/zte/nx531j/overlay

# Kernel
ifneq ($(TARGET_PREBUILT_KERNEL),)
    PRODUCT_COPY_FILES += $(TARGET_PREBUILT_KERNEL):kernel
endif

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom \
    ueventd.qcom.rc \
    init.class_main.sh \
    init.cmx.rc \
    init.mdm.sh \
    init.nubia.extend.usb.rc \
    init.nubia.sh \
    init.nubia.usb.rc \
    init.project.rc \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.sensors.sh \
    init.qcom.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.rom.rc \
    init.target.rc \
    init.ztemt.production.rc
