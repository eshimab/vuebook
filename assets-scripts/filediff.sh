#!/bin/bash


target_dir="/Volumes/toshidat 1/research/hfcm/20221128/hotfcm"

# 
source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# Loop through files in the source directory and its subdirectories
find "$source_dir" -type f -size -4G | while read -r source_file; do
    # Get the relative path from source_dir to the current file
    relative_path=${source_file#$source_dir}
    # Build the corresponding target file path
    target_file="$target_dir$relative_path"
   # If the target file exists and the files are the SAME, then print a dry-run message
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        # Use rm "$target_file" when you're ready to perform the actual removal
        rm "$target_file"
    fi
done


# source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
source_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
# 
find "$source_dir" -type f -size -4G | while read -r source_file; do
    relative_path=${source_file#$source_dir}
    target_file="$target_dir$relative_path"
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
    fi
done

# source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
source_dir="/Volumes/toshidat 1/research/hfcm/20221013/hotfcm"
# 
find "$source_dir" -type f -size -4G | while read -r source_file; do
    relative_path=${source_file#$source_dir}
    target_file="$target_dir$relative_path"
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
    fi
done


# source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20221013/hotfcm"
source_dir="/Volumes/toshidat 1/research/hfcm/20221102/hotfcm"
# 
find "$source_dir" -type f -size -4G | while read -r source_file; do
    relative_path=${source_file#$source_dir}
    target_file="$target_dir$relative_path"
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
    fi
done
 
# ------------------------------
target_dir="/Volumes/toshidat 1/research/hfcm/20221206/hotfcm"

# 
source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# Loop through files in the source directory and its subdirectories
find "$source_dir" -type f -size -4G | while read -r source_file; do
    # Get the relative path from source_dir to the current file
    relative_path=${source_file#$source_dir}
    # Build the corresponding target file path
    target_file="$target_dir$relative_path"
   # If the target file exists and the files are the SAME, then print a dry-run message
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        # Use rm "$target_file" when you're ready to perform the actual removal
        rm "$target_file"
    fi
done


# source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
source_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
# 
find "$source_dir" -type f -size -4G | while read -r source_file; do
    relative_path=${source_file#$source_dir}
    target_file="$target_dir$relative_path"
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
    fi
done

# source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
source_dir="/Volumes/toshidat 1/research/hfcm/20221013/hotfcm"
# 
find "$source_dir" -type f -size -4G | while read -r source_file; do
    relative_path=${source_file#$source_dir}
    target_file="$target_dir$relative_path"
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
    fi
done


# source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20221013/hotfcm"
source_dir="/Volumes/toshidat 1/research/hfcm/20221102/hotfcm"
# 
find "$source_dir" -type f -size -4G | while read -r source_file; do
    relative_path=${source_file#$source_dir}
    target_file="$target_dir$relative_path"
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
    fi
done


# source_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20221013/hotfcm"
# source_dir="/Volumes/toshidat 1/research/hfcm/20221102/hotfcm"
source_dir="/Volumes/toshidat 1/research/hfcm/20221128/hotfcm"
# 
find "$source_dir" -type f -size -4G | while read -r source_file; do
    relative_path=${source_file#$source_dir}
    target_file="$target_dir$relative_path"
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
    fi
done