cmake_minimum_required(VERSION 3.14)

project(cuda-boilerplate LANGUAGES CXX CUDA)

# add_library(cuda_test STATIC
# #   randomize.cpp
# #   randomize.h
# #   particle.cu
# #   particle.h
# #   v3.cu
# #   v3.h
#     cuda_test.cu
# )

# # Request that particles be built with -std=c++11
# # As this is a public compile feature anything that links to
# # particles will also build with -std=c++11
# # target_compile_features(cuda_test PUBLIC cxx_std_11)
# target_compile_features(cuda_test PUBLIC)

# # We need to explicitly state that we need all CUDA files in the
# # particle library to be built with -dc as the member functions
# # could be called by other libraries and executables
# set_target_properties(cuda_test PROPERTIES CUDA_SEPARABLE_COMPILATION ON)

add_executable(${PROJECT_NAME} 
    "src/cuda/cuda_test.cu"
)

set_property(TARGET ${PROJECT_NAME} PROPERTY CUDA_SEPARABLE_COMPILATION ON)
# target_link_libraries(particle_test PRIVATE particles)
