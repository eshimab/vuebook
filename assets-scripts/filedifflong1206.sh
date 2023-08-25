#!/bin/bash


new_dir="/Volumes/toshidat 1/research/hfcm/20221206/hotfcm"

# Loop through files in the source directory and its subdirectories
old_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
find "$old_dir" -type f -size -4G | while read -r old_file; do
    # Get the relative path from old_dir to the current file
    relative_path=${old_file#$old_dir}
    # Build the corresponding target file path
    new_file="$new_dir$relative_path"
   # If the target file exists and the files are the SAME, then print a dry-run message
    if [ -f "$new_file" ] && diff "$old_file" "$new_file" >/dev/null; then
        echo "Removed $new_file"
        # Use rm "$new_file" when you're ready to perform the actual removal
        rm "$new_file"
    fi
done
# old_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
old_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
find "$old_dir" -type f -size -4G | while read -r old_file; do
    relative_path=${old_file#$old_dir}
    new_file="$new_dir$relative_path"
    if [ -f "$new_file" ] && diff "$old_file" "$new_file" >/dev/null; then
        echo "Removed $new_file"
        rm "$new_file"
    fi
done
# old_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# old_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
old_dir="/Volumes/toshidat 1/research/hfcm/20221013/hotfcm"
find "$old_dir" -type f -size -4G | while read -r old_file; do
    relative_path=${old_file#$old_dir}
    new_file="$new_dir$relative_path"
    if [ -f "$new_file" ] && diff "$old_file" "$new_file" >/dev/null; then
        echo "Removed $new_file"
        rm "$new_file"
    fi
done
# old_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# old_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
# old_dir="/Volumes/toshidat 1/research/hfcm/20221013/hotfcm"
old_dir="/Volumes/toshidat 1/research/hfcm/20221102/hotfcm"
find "$old_dir" -type f -size -4G | while read -r old_file; do
    relative_path=${old_file#$old_dir}
    new_file="$new_dir$relative_path"
    if [ -f "$new_file" ] && diff "$old_file" "$new_file" >/dev/null; then
        echo "Removed $new_file"
        rm "$new_file"
    fi
done
# old_dir="/Volumes/toshidat 1/research/hfcm/20220902/hotfcm"
# old_dir="/Volumes/toshidat 1/research/hfcm/20220918/hotfcm"
# old_dir="/Volumes/toshidat 1/research/hfcm/20221013/hotfcm"
# old_dir="/Volumes/toshidat 1/research/hfcm/20221102/hotfcm"
old_dir="/Volumes/toshidat 1/research/hfcm/20221128/hotfcm"
find "$old_dir" -type f -size -4G | while read -r old_file; do
    relative_path=${old_file#$old_dir}
    new_file="$new_dir$relative_path"
    if [ -f "$new_file" ] && diff "$old_file" "$new_file" >/dev/null; then
        echo "Removed $new_file"
        rm "$new_file"
    fi
done
 


# Setup
dir_name="hotfcm"
dir_date="20230705"
base_dir="/Volumes/toshidat 3/research/hfcm"
new_dir="$base_dir/$dir_date/$dir_name"
# Check
echo "$new_dir"
ls -la "$new_dir"
for old_dir in "$base_dir"/*/"$dir_name"; do
  echo "Compare $new_dir to $old_dir"
  if [ "$old_dir" == "$new_dir" ]; then
    echo "Strings are equal."
  else
    echo "Dirs not equal"
  fi
done
# Execute
for old_dir in "$base_dir"/*/"$dir_name"; do
  echo "Checking $new_dir against $old_dir"
  if [ "$old_dir" == "$new_dir" ]; then
    echo "Strings are equal."
  else
    find "$old_dir" -type f -size -4G | while read -r old_file; do
      relative_path=${old_file#$old_dir}
      new_file="$new_dir$relative_path"
      if [ -f "$new_file" ] && diff "$old_file" "$new_file" >/dev/null; then
        echo "Removed $old_file"
        rm "$old_file"
      fi
    done
  fi
done


# Setup
dir_name="FCM"
dir_date="20230726"
base_dir="/Volumes/toshidat 3/research/fcmdir"
new_dir="$base_dir/$dir_date/$dir_name"
# Check
echo "$new_dir"
ls -la "$new_dir"
for old_dir in "$base_dir"/*/"$dir_name"; do
  echo "Checking $new_dir against $old_dir"
  if [ "$old_dir" == "$new_dir" ]; then
    echo "Strings are equal."
  else
    echo "Dirs not equal"
  fi
done
# Execute
for old_dir in "$base_dir"/*/"$dir_name"; do
  echo "Checking $new_dir against $old_dir"
  if [ "$old_dir" == "$new_dir" ]; then
    echo "Strings are equal."
  else
    find "$old_dir" -type f -size -4G | while read -r old_file; do
      relative_path=${old_file#$old_dir}
      new_file="$new_dir$relative_path"
      if [ -f "$new_file" ] && diff "$old_file" "$new_file" >/dev/null; then
        echo "Removed $old_file"
        rm "$old_file"
      fi
    done
  fi
done