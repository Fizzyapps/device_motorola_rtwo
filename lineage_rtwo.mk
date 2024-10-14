#
# Copyright (C) 2022-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from rtwo device
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit some common Derp stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)


# disable/enable blur support, default is false
TARGET_ENABLE_BLUR := true

# whether to ship aperture camera, default is false
PRODUCT_NO_CAMERA := true

# Wether to ship lawnchair launcher
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="SnapDragon 8gen2" \
    RISING_MAINTAINER="FizzyApps"



RISING_PACKAGE_TYPE := Gapps

WITH_GMS := true

TARGET_CORE_GMS := true


# extra add-ons for core GMS builds
# List of add-ons
# PRODUCT_PACKAGES += \
#    Photos \
#    MarkupGoogle \
#    LatinIMEGooglePrebuilt \
#    AiWallpapers \
#    WallpaperEmojiPrebuilt \
#    PrebuiltDeskClockGoogle \
#    CalculatorGooglePrebuilt \
#    CalendarGooglePrebuilt \
#    Velvet
TARGET_CORE_GMS_EXTRAS := true


# Wether to ship pixel launcher and set it as default launcher
TARGET_DEFAULT_PIXEL_LAUNCHER := true



PRODUCT_NAME := lineage_rtwo
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola edge 40 pro

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=rtwo_g \
    PRIVATE_BUILD_DESC="rtwo_g-user 14 U1TRS34.8-30-13-2-2-1 e9abed-dec8fe release-keys"

BUILD_FINGERPRINT := motorola/rtwo_g/rtwo:14/U1TRS34.8-30-13-2-2-1/e9abed-dec8fe:user/release-keys
