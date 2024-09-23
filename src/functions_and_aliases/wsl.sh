#!/bin/bash

alias home="cd /mnt/c/Users/$USER"
alias workspace="cd /mnt/c/Users/$USE/workspace"

function dos2unix_all() {
  find $1 -type f -exec dos2unix {} \;
}

