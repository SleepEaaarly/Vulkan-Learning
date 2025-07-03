cmake_minimum_required(VERSION 3.10)

project(Vulkan-Learning VERSION 1.0)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(SYSTEM_LIBRARY_DIR "D:/Libraries")
set(VULKAN_DIR "D:/VulkanSDK/1.4.313.2")

# 添加头文件搜索路径
include_directories(${PROJECT_SOURCE_DIR}/include ${SYSTEM_LIBRARY_DIR}/GLM/glm-1.0.1 
                    ${SYSTEM_LIBRARY_DIR}/GLFW/glfw-3.4.bin.WIN64/include ${VULKAN_DIR}/Include)

link_directories(${SYSTEM_LIBRARY_DIR}/GLFW/glfw-3.4.bin.WIN64/lib-vc2022 ${VULKAN_DIR}/Lib)

# add_executable(main src/main.cpp)
add_executable(main src/main.cpp)

target_link_libraries(main PRIVATE vulkan-1 glfw3)

set_target_properties(main PROPERTIES
    RUNTIME_OUTPUT_DIRECTORY "${PROJECT_SOURCE_DIR}/bin"
)
