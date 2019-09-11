LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

OPENCV_LIB_TYPE:=STATIC
include $(OPENCV_DIR)

FILE_LIST := $(wildcard $(LOCAL_PATH)/source/*.cc)
LOCAL_CFLAGS += -O3 -DUSE_OPENCV -DDLM_1_3 -DANDROID -std=c++0x -DDEBUG
#LOCAL_CFLAGS += -std=c++11
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)
LOCAL_C_INCLUDES += $(LOCAL_PATH)/include $(LOCAL_PATH)/.. $(LOCAL_PATH)/../AKAZE
LOCAL_MODULE := mistl

include $(BUILD_STATIC_LIBRARY)



