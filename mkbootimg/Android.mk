
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mkbootimg.c
LOCAL_STATIC_LIBRARIES := libmincrypt
LOCAL_CFLAGS := -Werror

LOCAL_MODULE := mkbootimg

include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := unpackbootimg.c
LOCAL_MODULE := unpackbootimg
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkbootimg.c
LOCAL_STATIC_LIBRARIES := libmincrypt libcutils libc
LOCAL_MODULE := utility_mkbootimg
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_STEM := mkbootimg
<<<<<<< HEAD
LOCAL_MODULE_CLASS := EXECUTABLES
=======
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
>>>>>>> 77b5e19... Forward-port mkbootimg / unpackbootimg support
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := unpackbootimg.c
LOCAL_STATIC_LIBRARIES := libcutils libc
LOCAL_MODULE := utility_unpackbootimg
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_STEM := unpackbootimg
<<<<<<< HEAD
LOCAL_MODULE_CLASS := EXECUTABLES
=======
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
>>>>>>> 77b5e19... Forward-port mkbootimg / unpackbootimg support
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

<<<<<<< HEAD

=======
>>>>>>> 77b5e19... Forward-port mkbootimg / unpackbootimg support
$(call dist-for-goals,dist_files,$(LOCAL_BUILT_MODULE))
