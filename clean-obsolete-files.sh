#!/bin/bash

function remove_target {
    while read -r src_file; do
        rm -f ~/"${src_file#homedir/}"
    done
}

git log --diff-filter=D --summary --pretty= | awk '{ print $4 }' | grep ^homedir/ | remove_target
git status --porcelain | grep '^\s*D ' | awk '{ print $2 }' | grep ^homedir/ | remove_target
