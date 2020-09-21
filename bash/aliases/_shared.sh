#!/bin/bash

# misc
# ----------------------------------------------
alias pingg="ping www.google.com"
alias ka="sudo killall -SIGKILL"
alias size="du -h --max-depth=1"
alias rcp="rsync -r --info=progress2"
# ----------------------------------------------

# folders
# ----------------------------------------------
alias cd..="cd .."
alias ..="cd .."
alias cls="clear"
alias home="cd ~"
alias workspace="cd ~/workspace"
# ----------------------------------------------

# bundle
# ----------------------------------------------
alias bu="bundle update"
alias bi="bundle install"
# ----------------------------------------------

# rails
# ----------------------------------------------
alias routes="rails routes"
alias fs="foreman start"
alias ts="thin start -b 0.0.0.0"
alias rs="rails s -b 0.0.0.0"
alias ru="rackup -b 0.0.0.0"
# ----------------------------------------------

# git
# ----------------------------------------------
alias gs="git status"
alias gca="git commit --amend"
alias gl="git log2"
alias ga="git add"
alias gc="git commit -m"
# ----------------------------------------------

# MySql
# ----------------------------------------------
alias start_mysql="sudo service mysql start"
alias stop_mysql="sudo service mysql stop"
alias restart_mysql="sudo service mysql restart"
# ----------------------------------------------

# PostgreSql
# ----------------------------------------------
alias start_pg="sudo service postgresql start"
alias stop_pg="sudo service postgresql stop"
alias restart_pg="sudo service postgresql restart"
# ----------------------------------------------

# MongoDB
# ----------------------------------------------
alias start_mongo="sudo service mongodb start"
alias stop_mogno="sudo service mongodb stop"
alias restart_mogno="sudo service mongodb restart"
# ----------------------------------------------

# Redis
# ----------------------------------------------
alias start_redis="sudo service redis-server start"
alias stop_redis="sudo service redis-server stop"
alias restart_redis="sudo service redis-server restart"
# ----------------------------------------------

# Elastic Search
# ----------------------------------------------
alias start_elastic_search="sudo service elasticsearch start"
alias stop_elastic_search="sudo service elasticsearch stop"
alias restart_elastic_search="sudo service elasticsearch restart"
# ----------------------------------------------


# YouTube DL
# ----------------------------------------------
alias yt2mp3="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 ";

alias yt="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 ";
# ----------------------------------------------
