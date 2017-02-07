# Copyright (C) 2014 The CyanogenMod Project
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

# $(call inherit-product, device/yu/lettuce/full_lettuce.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/n-7.1.1_r1/config/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/n-7.1.1_r1/config/common.mk)

# Inherit AOSP device configuration
$(call inherit-product, device/yu/lettuce/lettuce.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

PRODUCT_NAME := aosp_lettuce
PRODUCT_DEVICE := lettuce
# BOARD_VENDOR := yu
PRODUCT_BRAND := YU
PRODUCT_MODEL := YU5010
PRODUCT_MANUFACTURER := YU

PRODUCT_GMS_CLIENTID_BASE := android-micromax

# TARGET_VENDOR_PRODUCT_NAME := YUPHORIA
# TARGET_VENDOR_DEVICE_NAME := YUPHORIA
# PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA

## Use the latest approved GMS identifiers unless running a signed build
# ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=lettuce \
    BUILD_FINGERPRINT=YU/YUPHORIA/YUPHORIA:5.1.1/LMY49J/YOG4PAS8A8:user/release-keys \
    PRIVATE_BUILD_DESC="YUPHORIA-user 5.1.1 LMY49J YOG4PAS8A8 release-keys"
# endif
