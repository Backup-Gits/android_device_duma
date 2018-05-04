#
# Copyright (C) 2011 The Android Open-Source Project
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

TARGET_BOOTLOADER_BOARD_NAME := duma
TARGET_BOOTLOADER_NAME := duma
TARGET_BOARD_INFO_FILE := device/asus/duma/board-info.txt

TARGET_RECOVERY_FSTAB = device/asus/duma/rootdir/fstab.duma

DEVICE_MANIFEST_FILE := device/asus/duma/manifest.xml

-include vendor/asus/duma/BoardConfigVendor.mk
include device/asus/duma/BoardConfigCommon.mk
