#!/bin/bash

WSL_USERNAME=$(/mnt/c/Windows/System32/cmd.exe /c "echo %USERNAME%" | tr -d '\r')


alias home="cd /mnt/c/Users/$WSL_USERNAME"
alias workspace="cd /mnt/c/Users/$WSL_USERNAME/workspace"


function dos2unix_all() {
  find $1 -type f -exec dos2unix {} \;
}

