#https://github.com/mokby/scripts-for-Rockchips
#please contect me with Rubyen233@qq.com
while true; do
    current_time=$(date +"%Y-%m-%d %H:%M:%S:%3N")
    cpu_temp=$(cat /sys/class/thermal/thermal_zone0/temp)
    cpu_temp_formatted=$(awk "BEGIN {printf \"%.3f°C\n\", $cpu_temp/1000}")
    npu_temp=$(cat /sys/class/thermal/thermal_zone6/temp)
    npu_temp_formatted=$(awk "BEGIN {printf \"%.3f°C\n\", $npu_temp/1000}")
    echo "$current_time | CPU: $cpu_temp_formatted | NPU: $npu_temp_formatted"
    echo "$current_time | CPU: $cpu_temp_formatted | NPU: $npu_temp_formatted" >> temp_log.txt
    sleep 0.001
done
