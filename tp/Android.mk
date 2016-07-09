LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       := tp_node.sh
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_SRC_FILES    := tp_node.sh
LOCAL_MODULE_PATH  := $(TARGET_OUT_BIN)
include $(BUILD_PREBUILT)
