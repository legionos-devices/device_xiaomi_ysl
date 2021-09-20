#
# Copyright (C) 2017 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from ysl device
$(call inherit-product, device/xiaomi/ysl/device.mk)

<<<<<<< HEAD
# Inherit some common LegionOS stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

#Gapps
WITH_GAPPS := true

# Official
LEGION_BUILD_TYPE := OFFICIAL

# BOOT ANIMATION RES
TARGET_BOOT_ANIMATION_RES := 720
=======
# Inherit some common Legion stuff.

$(call inherit-product, vendor/legion/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720

# LegionOS Device Maintainers

PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=AYUSH_AJ

# Gapps    
TARGET_GAPPS_ARCH := arm64

TARGET_INCLUDE_PIXEL_CHARGER := true  
TARGET_SUPPORTS_BLUR := true
WITH_GAPPS := true
#LEGION_BUILD_TYPE := OFFICIAL
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ysl
PRODUCT_NAME := legion_ysl
<<<<<<< HEAD
BOARD_VENDOR := Xiaomi
=======
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi S2
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi
<<<<<<< HEAD

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tissot-user 8.0.0 OPR1.170623.026 8.1.10 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/tissot/tissot_sprout:8.0.0/OPR1.170623.026/8.1.10:user/release-keys"
=======
BOARD_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ1A.210205.004/7038034:user/release-keys
BUILD_DESCRIPTION := redfin-user 11 RQ1A.210205.004 7038034 release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
