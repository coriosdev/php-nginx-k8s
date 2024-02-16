#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
K8S_DIR="$SCRIPT_DIR/.."

if [ ! -d "$K8S_DIR" ]; then
    echo "Error: $K8S_DIR is not a directory."
    exit 1
fi

files=$(find "$K8S_DIR" -type f -name "*.example")

for file in $files; do
    file_without_extension="${file%.example}"
    target_file="$( dirname $file)/${file_without_extension##*/}"

    if [ ! -e "$target_file" ]; then
        cp "$file" "$target_file"
        # echo "Created $target_file"
    fi
done

subdirs=$(find "$K8S_DIR" -mindepth 3 -type d)

for subdir in $subdirs; do
    process_directory "$subdir"
done
