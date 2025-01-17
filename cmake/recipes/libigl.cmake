#
# Copyright 2020 Adobe. All rights reserved.
# This file is licensed to you under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License. You may obtain a copy
# of the License at http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under
# the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR REPRESENTATIONS
# OF ANY KIND, either express or implied. See the License for the specific language
# governing permissions and limitations under the License.
#
if(TARGET igl::core)
    return()
endif()

message(STATUS "Third-party: creating target 'igl::core'")

set(LIBIGL_PREDICATES ON CACHE BOOL "Use exact predicates" FORCE)

include(eigen)

include(FetchContent)
FetchContent_Declare(
    libigl
    # GIT_REPOSITORY https://github.com/libigl/libigl.git
    # GIT_TAG v2.4.0
    # GIT_SHALLOW TRUE
    URL "https://github.com/libigl/libigl/archive/refs/tags/v2.4.0.zip"
    URL_HASH SHA256=b20d80c9a3fa7d0c6bc3adee58e44f0cdb1cbb49228df6d67f9ddbfc08ee1403
)
FetchContent_MakeAvailable(libigl)
