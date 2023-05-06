#@https://github.com/mokby/scripts-for-Rockchips

dir_name=$(basename "$PWD")
jpg_files=(*.jpg)
num_jpg_files=${#jpg_files[@]}
echo "当前目录下共有 $num_jpg_files 张 jpg 图片。"
read -p "请输入需要生成的数量：" num_labels
for ((i=0; i<num_labels; i++)); do
    jpg_file=${jpg_files[i % num_jpg_files]}
    echo "$dir_name/$jpg_file" >> dataset.txt
done
echo "已生成 $num_labels 个，保存在 dataset.txt 文件中。"

