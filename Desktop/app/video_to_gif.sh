#!/bin/bash
# Tạo gif từ video với tốc độ mong muốn và lưu vào thư mục mong muốn

source_dir="$HOME/Videos/Screencasts/"
saved_dir="$HOME/Videos/Gifs/"
cp_dir=${1:-"not_set"}
speed=1


# nhap speed
read -p "Enter speed of the gif (default 1): " speed
speed=$(echo "1/$speed" | bc -l)   

# take saved file name
if [ ! -d $saved_dir ]; then 
    mkdir $saved_dir
fi 
num_files=$(ls $saved_dir | wc -l)
saved_name="output_$((num_files+1)).gif"

# convert to gif
file=$(ls $source_dir | tail -n 1)
ffmpeg -i "$source_dir$file" -vf "setpts=$speed*PTS" $saved_dir$saved_name 2> /dev/null

echo "Converted the Lastest Video to Gif completed!"
echo "$source_dir$file--->  $saved_dir$saved_name"

# copy to working directory
if [ $cp_dir != "not_set"  ]; then
    cp $saved_dir$saved_name $cp_dir/$saved_name
    echo "Copied to $cp_dir/$saved_name"
fi
