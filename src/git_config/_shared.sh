#!/bin/bash

# Set speed performance configs
# ----------------------------------------------
git config --global core.preloadindex true
git config --global core.fscache true
git config --global gc.auto 256
# ----------------------------------------------

# Allow long path names
# ----------------------------------------------
git config --system core.longpaths true
# ----------------------------------------------

# Set line endings to CRLF
# ----------------------------------------------
git config --global core.autocrlf true

# fix line-endings automatically changing - cousing lots of files in diff without content changes
# https://github.com/desktop/desktop/issues/3987#issuecomment-2037543542
git config core.filemode false
# ----------------------------------------------

# Fix error setting certificate verify locations
# ----------------------------------------------
git config --system http.sslverify false
# ----------------------------------------------

# Use '*' as comment character, as some projects have '#<id> <task>' as commit message
# ----------------------------------------------
git config --global core.commentchar "*"
# ----------------------------------------------

# Make nano default editor:
# ----------------------------------------------
git config --global core.editor 'nano'
# ----------------------------------------------

# git log2 | better log (one liners):
# ----------------------------------------------
git config --global alias.log2 "log --pretty=format:'%C(yellow) %h %C(cyan) %cd %C(white) %s %C(red) (%an)'"
# ----------------------------------------------

# git network | network (github network in terminal):
# ----------------------------------------------
git config --global alias.network "log -20 --pretty=format:'%C(yellow)%h%Creset\\ %C(green)%ar%C(cyan)%d\\ %Creset%s%C(yellow)\\ [%cn]' --graph --decorate --all"
# ----------------------------------------------

# git undo-commit | undo commit (leaving changes):
# ----------------------------------------------
git config --global alias.undo-commit "reset --soft HEAD^"
# ----------------------------------------------

# git remove-commit | remove commit (deleting content):
# ----------------------------------------------
git config --global alias.remove-commit "reset --hard HEAD^"
# ----------------------------------------------

# git unmerged | show unmerged branches:
# ----------------------------------------------
git config --global alias.unmerged "branch --no-merged master"
# ----------------------------------------------

# git merged | show merged branches:
# ----------------------------------------------
git config --global alias.merged "branch -r --no-merged"
# ----------------------------------------------

# git fetch_all | fetch and track all remote branches
# ----------------------------------------------
git config --global alias.fetch-all 'for remote in "git branch -r"; do git branch --track ${remote#origin/} $remote; done'
# ----------------------------------------------
