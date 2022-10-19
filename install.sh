#!/bin/bash

for entry in .*; do
    case $entry in
    . | .. | .git | .gitignore)
        continue
        ;;
    *)
        rsync -a "$entry" "$HOME"
        ;;
    esac
done
