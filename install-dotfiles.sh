#!/bin/bash

rsync -a homedir/ ~/ "$@"

while read -r file_path macro_definition; do
    m4 -D "$macro_definition" "homedir/$file_path" > "$HOME/$file_path"
done
