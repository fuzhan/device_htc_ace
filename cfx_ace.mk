# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/htc/ace/device.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/cfx/config/gsm.mk)

# Release Name
PRODUCT_RELEASE_NAME := DHD

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/cfx/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip

# Inherit CFX stuff
$(call inherit-product, vendor/cfx/config/common_full_phone.mk)

PRODUCT_NAME := cfx_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39E/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39E 573038 release-keys"
