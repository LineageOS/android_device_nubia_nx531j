LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := hals.conf
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := hals.conf
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/sensors
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := sensor_def_qcomdev.conf
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := sensor_def_qcomdev.conf
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/sensors
include $(BUILD_PREBUILT)
