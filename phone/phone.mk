PHONE_PATH := vendor/rockchip/common/phone

PRODUCT_COPY_FILES += \
    $(PHONE_PATH)/etc/ppp/ip-down:system/etc/ppp/ip-down \
    $(PHONE_PATH)/etc/ppp/ip-up:system/etc/ppp/ip-up \
    $(PHONE_PATH)/etc/ppp/call-pppd:system/etc/ppp/call-pppd \
    $(PHONE_PATH)/etc/operator_table:system/etc/operator_table

ifneq ($(strip $(TARGET_BOARD_PLATFORM)), rk3188)
PRODUCT_COPY_FILES += \
    $(PHONE_PATH)/bin/usb_modeswitch.sh:system/bin/usb_modeswitch.sh \
    $(PHONE_PATH)/bin/usb_modeswitch:system/bin/usb_modeswitch \
    $(PHONE_PATH)/bin/chat:system/bin/chat \
    $(PHONE_PATH)/lib/libril-rk29-dataonly.so:system/lib/libril-rk29-dataonly.so
endif

modeswitch_files := $(shell ls $(PHONE_PATH)/etc/usb_modeswitch.d)
PRODUCT_COPY_FILES += \
    $(foreach file, $(modeswitch_files), \
    $(PHONE_PATH)/etc/usb_modeswitch.d/$(file):system/etc/usb_modeswitch.d/$(file))

ifeq ($(strip $(PRODUCT_MODEM)), lc6365)
PRODUCT_COPY_FILES += \
    $(PHONE_PATH)/bin/rild_lc6365:system/bin/rild \
    $(PHONE_PATH)/lib/libreference-ril-lc6365.so:system/lib/libreference-ril.so \
    $(PHONE_PATH)/lib/libril-lc6365.so:system/lib/libril.so \
    $(PHONE_PATH)/lib/modules/lc_ltencm.ko:system/lib/modules/lc_ltencm.ko
endif

PRODUCT_PACKAGES += \
    rild \
    chat

PRODUCT_COPY_FILES += \
    $(PHONE_PATH)/etc/apns-full-conf.xml:system/etc/apns-conf.xml \
    $(PHONE_PATH)/etc/spn-conf.xml:system/etc/spn-conf.xml

PRODUCT_PROPERTY_OVERRIDES += \
    keyguard.no_require_sim=true \
    ro.com.android.dataroaming=true \
    ril.function.dataonly=1
