#https://github.com/mokby/scripts-for-Rockchips
#please contect me with Rubyen233@qq.com
#CPU
echo performance > /sys/devices/system/cpu/cpufreq/policy6/scaling_governor
#GPU
echo performance > /sys/class/devfreq/fb000000.gpu/governor
#NPU
echo performance > /sys/class/devfreq/fdab0000.npu/governor
