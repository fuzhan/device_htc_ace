# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device
$(call inherit-product, device/htc/ace/device.mk)

ifneq ($(TARGET_BUILD_VARIANT),codefirex)
# Get the long list of APNs
PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml
else
# Specify phone tech before including full_phone
$(call inherit-product, vendor/cfx/config/gsm.mk)

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/cfx/prebuilt/common/bootanimation/480.zip:system/media/bootanimation.zip

# Inherit CFX stuff
$(call inherit-product, vendor/cfx/config/common_full_phone.mk)
endif

# Release Name
PRODUCT_RELEASE_NAME := DHD

PRODUCT_NAME := full_ace
PRODUCT_DEVICE := ace
PRODUCT_BRAND := htc_wwe
PRODUCT_MODEL := Desire HD
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_ace BUILD_FINGERPRINT=google/occam/mako:4.2.2/JDQ39E/573038:user/release-keys PRIVATE_BUILD_DESC="occam-user 4.2.2 JDQ39E 573038 release-keys"
