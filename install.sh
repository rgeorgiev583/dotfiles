#!/bin/bash

rsync -a --exclude-from=ignore.lst .[^.]* ~ "$@"
