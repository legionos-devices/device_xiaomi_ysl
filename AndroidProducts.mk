#
# Copyright (C) 2017-2018 The LineageOS Project
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

PRODUCT_MAKEFILES := \
<<<<<<< HEAD
    $(LOCAL_DIR)/legion_ysl.mk

COMMON_LUNCH_CHOICES := \
    legion_ysl-user \
    legion_ysl-userdebug \
    legion_ysl-eng
=======
     $(LOCAL_DIR)/kangos_ysl.mk \
     $(LOCAL_DIR)/legion_ysl.mk

COMMON_LUNCH_CHOICES := \
kangos_ysl-user \
kangos_ysl-userdebug \
kangos_ysl-eng \
legion_ysl-user \
legion_ysl-userdebug \
legion_ysl-eng	
>>>>>>> aa8fc2bb11a2fe035be1f65821b57212205989e6
