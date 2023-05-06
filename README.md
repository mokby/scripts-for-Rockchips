# scripts-for-Rockchips
some small and usuful scripts that help you with RK35588 or other Rockchips 

作者的测试平台是RK3588,ubuntu20.04.

### quary_NPU_occupy.sh
`quary_NPU_occupy.sh`会每隔一毫秒查询NPU的占用率并打印在终端上,当用户按下Ctrl+c终止程序运行时,会将信息自动保存至当前目录下的`NPU_log.txt`中
使用方法:`sudo bash quary_NPU_occupy.sh`

### quary_temp
`quary_temp.sh`会每隔一毫秒查询CPU和NPU的温度并打印在终端上,当用户按下Ctrl+c终止程序运行时,会将信息自动保存至当前目录下的`temp_log.txt`中
使用方法:`sudo bash quary_temp.sh`

### set_peformence.sh
`set_peformence.sh`可以将CPU,GPU和NPU设置为最高频率的性能模式,使用方法:`sudo bash set_peformence.sh`,此操作会导致温度升高,请注意散热,建议搭配温度监控脚本使用

### set_origin.sh
`set_origin.sh`可将CPU,GPU和NPU设置为普通模式,分别是`ondemand`,`simple_ondemand`和`simple_ondemand`,使用方法:`sudo bash set_origin.sh`

### get_qut.sh
`get_qut.sh`会统计目录下有多少张jpg图片，然后询问用户需要多少张做量化，给出数值后就会生成官方要求的用于量化的txt文件，例如：`val2017/000000468505.jpg`。使用方法：将`get_qut.sh`移动到需要统计图片的文件夹下，进入终端输入`bash get_qut.sh`,然后就会生成dataset.txt
