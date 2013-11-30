# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := mystul

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/mystul/device_mystul.mk)

# Device naming
PRODUCT_DEVICE := mystul
PRODUCT_NAME := cm_mystul
PRODUCT_BRAND := htc
PRODUCT_MODEL := First
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mystul BUILD_FINGERPRINT=cingular_us/mystul/mystul:4.1.2/JZO54K/180011.1:user/release-keys PRIVATE_BUILD_DESC="=1.08.502.1 CL180011 release-keys" BUILD_NUMBER=96068
