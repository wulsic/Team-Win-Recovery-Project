LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := libcp_xattrs.cpp
LOCAL_MODULE := libcp_xattrs
LOCAL_MODULE_TAGS := eng
LOCAL_SHARED_LIBRARIES += libc libstlport
LOCAL_C_INCLUDES += bionic external/stlport/stlport
include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := cp_xattrs.cpp
LOCAL_MODULE := cp_xattrs
LOCAL_MODULE_TAGS := eng
LOCAL_C_INCLUDES += bionic external/stlport/stlport
LOCAL_SHARED_LIBRARIES += libc libstlport
LOCAL_STATIC_LIBRARIES += libcp_xattrs
LOCAL_MODULE_PATH := $(TARGET_OUT_OPTIONAL_EXECUTABLES)
LOCAL_UNSTRIPPED_PATH := $(TARGET_OUT_EXECUTABLES_UNSTRIPPED)
include $(BUILD_EXECUTABLE)
