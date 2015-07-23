# Release name
PRODUCT_RELEASE_NAME := lettuce

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/yu/lettuce/full_lettuce.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := slim_lettuce
BOARD_VENDOR := yu
PRODUCT_DEVICE := lettuce

PRODUCT_GMS_CLIENTID_BASE := android-micromax

TARGET_VENDOR_PRODUCT_NAME := YUPHORIA
TARGET_VENDOR_DEVICE_NAME := YUPHORIA
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=YUPHORIA PRODUCT_NAME=YUPHORIA

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=YU/YUPHORIA/YUPHORIA:5.0.2/LRX22G/YNG1TBS2P2:user/release-keys \
    PRIVATE_BUILD_DESC="YUPHORIA-user 5.0.2 LRX22G YNG1TBS2P2 release-keys"
