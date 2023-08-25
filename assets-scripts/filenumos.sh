#!/bin/bash



# Setup
dir_name="FCM"
dir_date="20221207"
base_dir="/Volumes/toshidat 2/backup/embp22/coco"
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
  echo "$old_dir"
  if [ "$old_dir" == "$new_dir" ]; then
    echo "Strings are equal."
  else
    find "$old_dir" -type f -size -4G | while read -r source_file; do
      relative_path=${source_file#$old_dir}
      target_file="$new_dir$relative_path"
      if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
      fi
    done
  fi
done





# Execute
for old_dir in "$base_dir"/*/"$dir_name"; do
  echo "$old_dir"
  if [ "$old_dir" == "$new_dir" ]; then
    echo "Strings are equal."
  else
    find "$old_dir" -type f -size -4G | while read -r source_file; do
      relative_path=${source_file#$old_dir}
      target_file="$new_dir$relative_path"
      if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo "Removed $target_file"
        rm "$target_file"
      fi
    done
  fi
done

# Loop through files in the directory
for source_filepath in "$source_dir"/*.HEIC; do
    # Extract the filename and extension
    filename=$(basename "$source_filepath")
    extension="${filename##*.}"
    echo "source_filepath is $source_filepath"
    # Check if the filename contains the source_string
    if [[ "$filename" =~ .*"$source_string".* ]]; then
        # Replace the source_string with the target_string using sed
        target_filename=$(echo "$filename" | sed "s/$source_string/$target_string/g")
        # Construct the new file path
        target_filepath="$target_dir/$target_filename" 
        # Copy the file with the -n option to prevent overwriting
        if mv -n "$source_filepath" "$target_filepath"; then
            echo "Moved $source_filepath to $target_filepath"
        else
            echo "File was not copied because a file with the same name already exists."
        fi
    fi
done 
