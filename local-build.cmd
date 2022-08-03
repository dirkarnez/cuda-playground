REM run as Administrator
@echo off
cd /d %~dp0
@REM set DOWNLOAD_DIR=%USERPROFILE%\Downloads
@REM set DOWNLOAD_DIR_LINUX=%DOWNLOAD_DIR:\=/%
@REM SET PATH=^
@REM %DOWNLOAD_DIR%\PortableGit\bin;^
@REM %DOWNLOAD_DIR%\cmake-3.22.2-windows-x86_64\bin;^

set PATH=^
D:\Softwares\cmake-3.23.0-rc1-windows-x86_64\bin;

cmake -G "Visual Studio 16 2019" -A x64 ^
-DCMAKE_CUDA_ARCHITECTURES="60;61;75;86" ^
-B./build &&^
cd build &&^
cmake --build . --target ALL_BUILD --config Debug -- /nologo /verbosity:minimal /maxcpucount &&^
echo "Successful build"
pause