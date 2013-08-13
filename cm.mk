# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := totemc2

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/htc/totemc2/device_totemc2.mk)

# Device naming
PRODUCT_DEVICE := totemc2
PRODUCT_NAME := cm_totemc2
PRODUCT_BRAND := htc
PRODUCT_MODEL := One VX
PRODUCT_MANUFACTURER := HTC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_totemc2 BUILD_FINGERPRINT=cingular_us/totemc2/totemc2:4.0.4/IMM76I/124286.5:user/release-keys PRIVATE_BUILD_DESC="=1.17.502.5 CL124286 release-keys" BUILD_NUMBER=96068
