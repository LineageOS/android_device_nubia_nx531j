LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libshim_camera
LOCAL_SRC_FILES := camera_shim.cpp
LOCAL_SHARED_LIBRARIES := libui
include $(BUILD_SHARED_LIBRARY)

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


include $(CLEAR_VARS)

LOCAL_MODULE        := NeoVision6
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_MODULE_OWNER  := nubia
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_SRC_FILES     := NeoVision6.apk
LOCAL_CERTIFICATE   := shared
LOCAL_OVERRIDES_PACKAGES := Camera2

AV_LIBS := libavcodec.so libavfilter.so libavformat.so libavutil.so
AV_SYMLINKS := $(addprefix $(TARGET_OUT_APPS)/$(LOCAL_MODULE)/lib/arm64/,$(notdir $(AV_LIBS)))

$(AV_SYMLINKS):
	@mkdir -p $(dir $@)
	ln -sf /system/lib64/$(notdir $@) $@

LOCAL_ADDITIONAL_DEPENDENCIES := $(AV_SYMLINKS)

include $(BUILD_PREBUILT)
