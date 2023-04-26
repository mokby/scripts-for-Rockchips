#@https://github.com/mokby/scripts-for-Rockchips
#please contact me with Rubyen233@qq.com
LOG_FILE="./NPU_log.txt"
> $LOG_FILE
trap "echo 'Exiting...'; exit 0" SIGINT
while true; do
	timestamp=$(date +"%Y-%m-%d %H:%M:%S.%3N")
    result=$(cat /sys/kernel/debug/rknpu/load)
    echo "$timestamp: $result"
    echo "$timestamp: $result" >> $LOG_FILE
    sleep 0.001
done 
