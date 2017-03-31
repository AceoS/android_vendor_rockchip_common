LOCAL_PATH := vendor/rockchip/common/tinyalsa
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bin/amix:/system/bin/amix \
	$(LOCAL_PATH)/lib/hw/audio.primary.rk30board.so:/system/lib/hw/audio.primary.rk30board.so \
	$(LOCAL_PATH)/lib64/hw/audio.primary.rk30board.so:/system/lib64/hw/audio.primary.rk30board.so
