#!/bin/bash

rsync -a --exclude-from=ignore.lst .[^.]* ~ "$@"

while read -r file_path macro_definition; do
    m4 -D "$macro_definition" "$file_path" > "$HOME/$file_path"
done
