# scripts-for-Rockchips
some small and usuful scripts that help you with RK35588 or other Rockchips 
作者的测试平台是RK3588,ubuntu20.04.

`quary_NPU_occupy.sh`会每隔一毫秒查询NPU的占用率并打印在终端上,当用户按下Ctrl+c终止程序运行时,会将信息自动保存至当前目录下的`NPU_log.txt`中
使用方法:`sudo bash quary_NPU_occupy.sh`
