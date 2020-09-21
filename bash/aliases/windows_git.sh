#!/bin/bash

alias ka="echo 'command KILLALL not available in windows'"

alias yt2mp3="$MYBASH_PATH/bin/windows/youtube-dl.exe -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 ";

alias yt="$MYBASH_PATH/bin/windows/youtube-dl.exe -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 ";
