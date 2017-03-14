ifeq ($(strip $(TARGET_BOARD_PLATFORM_GPU)), mali-t760)
ifeq ($(strip $(TARGET_ARCH)), arm)
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/gpu/MaliT760/modules/$(TARGET_ARCH)/mali_kbase.ko:system/lib/modules/mali_kbase.ko \
	vendor/rockchip/common/gpu/MaliT760/lib/$(TARGET_ARCH)/rk3288/libGLES_mali.so:system/vendor/lib/egl/rk3288/libGLES_mali.so \
	vendor/rockchip/common/gpu/MaliT760/lib/$(TARGET_ARCH)/rk3288w/libGLES_mali.so:system/vendor/lib/egl/rk3288w/libGLES_mali.so
endif
endif

ifeq ($(strip $(ENABLE_STEREO_DEFORM)), true)
PRODUCT_COPY_FILES += \
	vendor/rockchip/common/gpu/libs/libGLES.so:system/lib/egl/libGLES.so
endif
