#!/bin/bash

# Array-file names
file_names=("test1.txt" "test2.txt" "test3.txt")

# Search file names and create any that don't exist
for filename in "${file_names[@]}"
do
# *NOTE*"@""= $@ refers to all of a shell script's command-line arguments
  file_path="./$filename "


  # Check if the file exists in directory
  if [ ! -f "$file_path" ]; then
  # *NOTE* "!" = History, -f= the “-f” expression, will check if the ~/. file exists and is a regular file (not a directory).
    # Create file if it doesn't exist


    echo "This is a new file." > "$file_path"
    echo "New file '$file_path' created in dir"
  else
    echo "File '$file_path' already exisits in dir"
  fi
done
