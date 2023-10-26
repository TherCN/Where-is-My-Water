#
# Copyright (C) 2008 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This makefile supplies the rules for building a library of JNI code for
# use by our example of how to bundle a shared library with an APK.

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

# This is the target being built.
LOCAL_MODULE:= libmui

# All of the source files that we will compile

LOCAL_CFLAGS := -w -s -Wno-error=format-security -fvisibility=hidden -fpermissive -fexceptions
LOCAL_CPPFLAGS := -std=c++17
LOCAL_CPPFLAGS += -w -s -Wno-error=format-security -fvisibility=hidden -Werror 
LOCAL_CPPFLAGS += -Wno-error=c++11-narrowing -fpermissive -Wall -fexceptions
LOCAL_CPPFLAGS += -I$(LOCAL_PATH)/Include -I$(LOCAL_PATH)/Include/Imgui -I$(LOCAL_PATCH)/Includes -I$(LOCAL_PATH)/And64InlineHook


#LOCAL_C_INCLUDES := $(LOCAL_PATH)/Include $(LOCAL_PATH)/Include/Imgui $(LOCAL_PATCH)/patch/Includes
LOCAL_SRC_FILES:= Source/Imgui/imgui.cpp \
        Source/Imgui/imgui_draw.cpp \
        Source/Imgui/imgui_demo.cpp \
        Source/Imgui/imgui_tables.cpp \
        Source/Imgui/imgui_widgets.cpp \
        Source/Imgui/imgui_impl_android.cpp \
        Source/Imgui/imgui_impl_opengl3.cpp \
        Source/Imgui_Android_Input.cpp \
        Source/EGL.cpp \
        Source/MyFile.cpp \
        native-lib.cpp \
        Platinmods/PlatinmodsMemoryPatch.cpp \
        Platinmods/PlatinmodsUtils.cpp 
    
LOCAL_LDLIBS := -ldl -llog -lEGL -lGLESv3 -landroid
include $(BUILD_SHARED_LIBRARY)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= wmw
LOCAL_SRC_FILES:= $(LOCAL_PATH)/libwmw.so
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE:= fmodex
LOCAL_SRC_FILES:= $(LOCAL_PATH)/libfmodex.so
include $(PREBUILT_SHARED_LIBRARY)