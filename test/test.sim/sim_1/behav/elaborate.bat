@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto b5a94d3dfc734611b1201106b8f0a78f -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot test_test_behav xil_defaultlib.test_test -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
