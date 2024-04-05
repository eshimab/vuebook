#!/bin/bash







# Dry Run
check_dry=0  # 1 means dry run
check_sync=1 # 1 = send rsync
# New Backup
backup_dir="FCM"
date_new="X20231121"

remote_dir="fcmdir"
# date_pre="20230726"

local_base="/Users/eshim"
remote_base="/Volumes/toshidat/research"


filepath_loc="$local_base/$backup_dir"
filepath_new="$remote_base/$remote_dir/$date_new/$backup_dir"
remote_main="$remote_base/$remote_dir"
new_dir="$filepath_new"

# Report
# ls -la "$old_dir"
echo "      "
echo "remote_main = $remote_main"
echo "new_dir = $new_dir"
echo "filepath_loc = $filepath_loc"
echo "filepath_new = $filepath_new"

# Sync to create new_dir if requested
if ((check_sync == 1)); then
    echo "      "
    echo "-------- BEGIN RSYNC --------"
    echo "sync from filepath_loc = $filepath_loc"
    echo "sync to filepath_new = $filepath_new"
    mkdir -p "$new_dir"
    rsync --archive --progress --recursive --verbose "$filepath_loc/" "$filepath_new"
fi

# Report  
if ((check_dry == 0)); then
    echo "      "
    echo " ----- FILES WILL BE DELETED!!! -----"
fi

# Compare files to old_dirs and new_dir
for dir_number in "$remote_main/2"*; do
    echo "      "
    echo " ----- Beginning Dir Comparison -----"
    echo "dir_number/backup_dir = $dir_number/$backup_dir"
    old_dir="$dir_number/$backup_dir"

    echo "old_dir = $old_dir"
    echo "new_dir = $new_dir"
    echo "      "
    # Loop through files in the old dir and its subdirs
    find "$old_dir" -type f -size -6G | while read -r old_file; do
        # Get the relative path from old_dir to the current file
        relative_path=${old_file#$old_dir}
        # Build the corresponding new file path
        new_file="$new_dir$relative_path"
        # echo "Checking $new_file"
        # If the filename exists in most recent sync and the files are the SAME
        if [ -f "$new_file" ] && diff "$old_file" "$new_file" >/dev/null; then
            echo ""
            # If dry run, report the process
            if ((check_dry == 1)); then
                echo "Dry Run would remove $old_file"
                echo "Dry Run would KEEP $new_file"
            # If true run, delete the old_file and keep the new_file
            elif ((check_dry == 0)); then
                echo "DELETING: $old_file"
                echo "KEEPING: $new_file"
                rm "$old_file"
            fi  
        fi 
    done
done


echo "      "
echo "------      EXIT DEBUG   ------  "
exit 1


# Dry Run
check_dry=1 # 1 means dry run

# New Backup
backup_dir="FCM"
date_new="20230909"

remote_dir="fcmdir"
date_pre="20230726"

local_base="/Users/eshim"
remote_base="/Volumes/toshidat/research"


filepath_loc="$local_base/$backup_dir"
filepath_new="$remote_base/$remote_dir/$date_new/$backup_dir"
filepath_pre="$remote_base/$remote_dir/$date_pre/$backup_dir"

echo "filepath_loc = $filepath_loc"
echo "filepath_new = $filepath_new"
echo "filepath_pre = $filepath_pre"

echo "      "
echo "-------- BEGIN RSYNC --------"
mkdir -p "$filepath_new"
# rsync --archive --progress --recursive --verbose "$filepath_loc/" "$filepath_new"



old_dir="$filepath_pre"
new_dir="$filepath_new"
# Loop through files in the source directory and its subdirectories
find "$old_dir" -type f -size -4G | while read -r source_file; do
    # Get the relative path from old_dir to the current file
    relative_path=${source_file#$old_dir}
    # Build the corresponding target file path
    target_file="$new_dir$relative_path"
    # echo "Checking $target_file"
   # If the target file exists and the files are the SAME, then print a dry-run message
    if [ -f "$target_file" ] && diff "$source_file" "$target_file" >/dev/null; then
        echo ""
        if ((check_dry == 1)); then
            echo "Dry Run would remove $source_file"
        elif ((check_dry == 0)); then
            echo "DELETING: $source_file"
            rm "$source_file"
        fi  
    fi
done
