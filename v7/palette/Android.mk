# Copyright (C) 2014 The Android Open Source Project
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

LOCAL_PATH := $(call my-dir)

# Here is the final static library that apps can link against.
include $(CLEAR_VARS)
LOCAL_MODULE := android-support-v7-palette
LOCAL_SDK_VERSION := 7
LOCAL_SRC_FILES := $(call all-java-files-under, src/main)
LOCAL_MANIFEST_FILE := $(LOCAL_PATH)/src/main/AndroidManifest.xml
LOCAL_JAVA_LIBRARIES += android-support-v4
include $(BUILD_STATIC_JAVA_LIBRARY)

# API Check
# ---------------------------------------------
support_module := $(LOCAL_MODULE)
support_module_api_dir := $(LOCAL_PATH)/api
support_module_src_files := $(LOCAL_SRC_FILES)
support_module_java_libraries := $(LOCAL_JAVA_LIBRARIES)
support_module_java_packages := android.support.v7.graphics
include $(SUPPORT_API_CHECK)
