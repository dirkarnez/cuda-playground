cuda-boilerplate
================
### Notes
- CUDA Toolkit should be installed because CMake expects these installation files are in somewhere
- Visual Studio only. No MinGW should be used at the moment
- Visual Studio version `version=14.25` is specified in GitHub Action: `cmake -G "Visual Studio 16 2019" -A x64 -T version=14.25 -DCMAKE_CUDA_ARCHITECTURES="60;61;75;86" -B./build`
  - CUDA does not work with latest Visual Studio

### TODOs
- [ ] Debugger settings (gdb may not work)

### Reference
- [Building Cross-Platform CUDA Applications with CMake | NVIDIA Technical Blog](https://developer.nvidia.com/blog/building-cuda-applications-cmake/)
- [Use CMake to compile CUDA program · CUDA Little Book](https://nanxiao.gitbooks.io/cuda-little-book/content/posts/use-cmake-to-compile-cuda-program.html)
