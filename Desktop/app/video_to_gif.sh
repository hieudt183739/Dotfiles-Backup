#!/bin/bash

source_dir="$HOME/Videos/Screencasts/"
saved_dir="$HOME/Videos/Gifs/"

if [ ! -d $saved_dir ]; then mkdir $saved_dir; fi 
num_files=$(ls $saved_dir | wc -l)
saved_name="output_$((num_files+1)).gif"

file=$(ls $source_dir | tail -n 1)
ffmpeg -i "$source_dir$file" $saved_dir$saved_name 2> /dev/null
echo "Converted the Lastest Video to Gif completed!"
echo "$source_dir$file--->  $saved_dir$saved_name"
