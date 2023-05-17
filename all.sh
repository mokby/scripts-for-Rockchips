#!/bin/bash

while true
do
    # 获取当前时间
    current_time=$(date +%T)

    # 查询CPU频率并打印
    for i in $(seq 0 $(($(nproc) - 1)))
    do
        cpu_freq=$(cat /sys/devices/system/cpu/cpu$i/cpufreq/scaling_cur_freq)
        echo "$current_time - cpu$i_freq: $cpu_freq"
    done

    # 查询NPU频率并打印
    npu_freq=$(cat /sys/class/devfreq/fdab0000.npu/cur_freq)
    echo "$current_time - npu_freq: $npu_freq"

    # 运行rknpu/load并打印
    rknpu_load=$(cat /sys/kernel/debug/rknpu/load)
    echo "$current_time - rknpu_load: $rknpu_load"

    # 打印分隔符
    echo "------------------------"

    # 等待0.1秒
    sleep 0.1
done

