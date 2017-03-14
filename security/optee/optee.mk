PRODUCT_COPY_FILES += \
    vendor/rockchip/common/security/optee/optee.ko:system/lib/modules/optee.ko \
    vendor/rockchip/common/security/optee/optee_armtz.ko:system/lib/modules/optee_armtz.ko
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/security/optee/optee_client/tee-supplicant:system/bin/tee-supplicant \
    vendor/rockchip/common/security/optee/optee_client/libteec.so:system/lib/libteec.so
PRODUCT_COPY_FILES += \
    vendor/rockchip/common/security/optee/optee_user/rk_widevine/rk_store_keybox:system/bin/rk_store_keybox \
    vendor/rockchip/common/security/optee/optee_user/rk_widevine/c11fe8ac-b997-48cf-a28de2a55e5240ef.ta:system/lib/optee_armtz/c11fe8ac-b997-48cf-a28de2a55e5240ef.ta
