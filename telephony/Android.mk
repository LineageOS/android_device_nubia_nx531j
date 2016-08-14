LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE       	:= qti-telephony-common
LOCAL_MODULE_TAGS  	:= optional
LOCAL_MODULE_CLASS 	:= JAVA_LIBRARIES
LOCAL_MODULE_SUFFIX := $(COMMON_JAVA_PACKAGE_SUFFIX)
LOCAL_SRC_FILES    	:= qti-telephony-common.jar
include $(BUILD_PREBUILT)
