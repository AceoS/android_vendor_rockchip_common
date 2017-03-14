ifeq ($(PRODUCT_BUILD_MODULE), car)
LOCAL_PATH := $(call my-dir)
#
# bluetooth.default.so for target.
#
include $(CLEAR_VARS)
LOCAL_SRC_FILES_32 := x86/bluetooth.default.so
LOCAL_MODULE:= bluetooth.default
LOCAL_MODULE_OWNER := rockchip
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_SUFFIX := $(TARGET_SHLIB_SUFFIX)
LOCAL_REQUIRED_MODULES := \
        auto_pair_devlist.conf \
        bt_did.conf \
        bt_stack.conf \
        libbt-vendor
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

endif
