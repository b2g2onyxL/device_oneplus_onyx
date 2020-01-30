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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from onyx device
$(call inherit-product, device/oneplus/onyx/device.mk)

# Inherit some common CM stuff.
# $(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Call the proprietary setup
$(call inherit-product-if-exists, vendor/oneplus/onyx/onyx-vendor.mk)

# Inherit directly from B2G
$(call inherit-product, vendor/cm/config/common_full.mk)

# for Gecko to use the correct resolution assets
# Valid options are: 1.5 | 2 | 2.25 | 3.375
GAIA_DEV_PIXELS_PER_PX := 2.25 #@2.25.png
B2G_SYSTEM_APPS := 1
# for Gecko to use the correct boot animation
# Valid options are: hvga | fwvga | qHD | 720p | 1080p
BOOTANIMATION_ASSET_SIZE := 1080p


PRODUCT_RELEASE_NAME := OnePlus X
PRODUCT_NAME := full_onyx
PRODUCT_DEVICE := onyx
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_MODEL := ONE
PRODUCT_BRAND := OnePlus 
