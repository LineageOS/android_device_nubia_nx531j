LOCAL_PATH:= $(call my-dir)

# Qualcomm XML Files

include $(CLEAR_VARS)
LOCAL_MODULE       := imx179_chromatix.xml
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := imx179_chromatix.xml
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/camera
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := imx298_ois_chromatix.xml
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := imx298_ois_chromatix.xml
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/camera
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := msm8996_camera.xml
LOCAL_MODULE_TAGS  := optional eng
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := msm8996_camera.xml
LOCAL_MODULE_PATH  := $(TARGET_OUT_ETC)/camera
include $(BUILD_PREBUILT)
