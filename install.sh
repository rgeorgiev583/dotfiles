#!/bin/bash

for entry in .*; do
    case $entry in
    . | .. | .git | .gitignore | .gitkeep | .editorconfig)
        continue
        ;;
    *)
        rsync -a "$entry" "$HOME"
        ;;
    esac
done
