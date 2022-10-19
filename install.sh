#!/bin/bash

rsync -a --exclude-from=ignore.lst .[^.]* ~

for macro_definition; do
    m4 -D "${macro_definition##*/}" "${macro_definition%/*}" > "$HOME/${macro_definition%/*}"
done
