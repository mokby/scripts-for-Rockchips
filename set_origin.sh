#https://github.com/mokby/scripts-for-Rockchips
#please contect me with Rubyen233@qq.com
#CPU普通模式
echo ondemand  > /sys/devices/system/cpu/cpufreq/policy6/scaling_governor
#GPU普通模式
echo simple_ondemand > /sys/class/devfreq/fb000000.gpu/governor
#NPU普通模式
echo simple_ondemand > /sys/class/devfreq/fdab0000.npu/governor
