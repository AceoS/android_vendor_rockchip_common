WLAN_PATH := vendor/rockchip/common/wlan

PRODUCT_COPY_FILES += \
    $(WLAN_PATH)/iwconfig:system/bin/iwconfig \
    $(WLAN_PATH)/iwlist:system/bin/iwlist \

WLAN_FIRMWARE := $(wildcard $(WLAN_PATH)/firmware/*)

PRODUCT_COPY_FILES += \
    $(foreach file, $(WLAN_FIRMWARE), $(file):system/etc/firmware/$(notdir $(file)))
