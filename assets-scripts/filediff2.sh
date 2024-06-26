#!/bin/bash





# Dry Run
check_dry=0  # 1 means dry run
check_sync=1 # 1 = send rsync
# New Backup
backup_dir="FCM"
date_new="X20231129"

remote_dir="fcmdir"
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
echo "------      RUN COMPLETED!   ------  "
exit 1


