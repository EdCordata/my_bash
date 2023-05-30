#!/bin/bash


# Returns string that is fixed size, even if provided input
# string is shorter/longer
#
# var_name=$(string_fixed_length "word" 2) # => "wo"
# var_name=$(string_fixed_length "word" 4) # => "word"
# var_name=$(string_fixed_length "word" 5) # => "word "
function string_fixed_length() {
  string=$1; length=$2; result="";

  for (( i=0; i<$length; i++ )); do
    letter="${string:$i:1}";

    if [ -z "$letter" ]; then
      result="$result "
    else
      result="$result$letter"
    fi
  done

  echo "$result";
}


function git_pull_all() {
  if [ -z $1 ]; then
    echo "Specify remote";
   else
    git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#$1/}" "$remote"; done
    git fetch --all
    git pull --all
  fi
}


function be() {
  echo 'Executing:';
  echo " * bundle exec $@";
  echo '';
  $("bundle exec $@");
}


function rspecp() {
  echo 'Executing:';
  echo " * bundle exec rspec --format documentation --pattern $@";
  echo '';
  $("bundle exec rspec --format documentation --pattern $@");
}


function db_reset() {
  echo 'Executing:';
  echo ' * bundle exec rails db:environment:set RAILS_ENV=development';
  echo ' * bundle exec rake  db:drop            RAILS_ENV=development';
  echo ' * bundle exec rake  db:create          RAILS_ENV=development';
  echo ' * bundle exec rake  db:create          RAILS_ENV=test';
  echo ' * bundle exec rake  db:migrate         RAILS_ENV=development'
  echo ' * bundle exec rake  db:migrate         RAILS_ENV=test';
  echo '';
  bundle exec rails db:environment:set RAILS_ENV=development;
  bundle exec rake  db:drop            RAILS_ENV=development;
  bundle exec rake  db:create          RAILS_ENV=development;
  bundle exec rake  db:create          RAILS_ENV=test;
  bundle exec rake  db:migrate         RAILS_ENV=development;
  bundle exec rake  db:migrate         RAILS_ENV=test;
}


function migrate() {
  echo 'Executing:';
  echo ' * bundle exec rails db:environment:set RAILS_ENV=development';
  echo ' * bundle exec rake  db:migrate         RAILS_ENV=development';
  echo ' * bundle exec rake  db:migrate         RAILS_ENV=test';
  echo '';
  bundle exec rails db:environment:set RAILS_ENV=development;
  bundle exec rake  db:migrate         RAILS_ENV=development;
  bundle exec rake  db:migrate         RAILS_ENV=test;
}


function seed() {
  echo 'Executing:';
  echo ' * bundle exec rails db:environment:set RAILS_ENV=development';
  echo ' * bundle exec rake  db:seed            RAILS_ENV=development';
  echo '';
  bundle exec rails db:environment:set RAILS_ENV=development;
  bundle exec rake  db:seed            RAILS_ENV=development;
}


function fill() {
  echo 'Executing:';
  echo ' * bundle exec rails db:environment:set RAILS_ENV=development';
  echo ' * bundle exec rake  db:fill            RAILS_ENV=development';
  echo '';
  bundle exec rails db:environment:set RAILS_ENV=development;
  bundle exec rake  db:fill            RAILS_ENV=development;
}


# USAGE: append_after_match "file path" "match" "text to append"
# MUST ESCAPE '/'
function append_after_match() {
  if [ -f "$1" ]; then
    sudo sed -i "/$2/a $3" "$1";
  fi
}


# USAGE: append_before_match "file path" "match" "text to append"
# MUST ESCAPE '/'
function append_before_match() {
  if [ -f "$1" ]; then
    sudo sed -i "/$2/i $3" "$1";
  fi
}


# USAGE: append_to_file "file path" "text to append"
# MUST ESCAPE '/'
function append_to_file() {
  sudo touch "$1"; # make sure file exists
  echo "$2" | sudo tee -a "$1";
}


# USAGE: find_and_replace "file path" "text to find" "text to replace"
# MUST ESCAPE '/'
function find_and_replace() {
  if [ -f "$1" ]; then
    sudo touch "$1"; # make sure file exists
    sudo sed -i -e "s/$2/$3/g" "$1";
  fi
}


# if unless_file_contains "<file path>" "string"; then
function if_file_contains() {
  if [ ! -f "$1" ]; then
    false;
  else
    if grep -q "$2" "$1"; then
      true;
    else
      false;
    fi
  fi
}


# if if_file_exists "<file path>"; then
function if_file_exists() {
  if [ -f $1 ]; then
    true;
  else
    false;
  fi
}


# if if_file_not_exists "<file path>"; then
function if_file_not_exists() {
  if [ -f $1 ]; then
    false;
  else
    true;
  fi
}


# if if_folder_exists "<folder path>"; then
function if_folder_exists() {
  if [ -d $1 ]; then
    true;
  else
    false;
  fi
}


# if if_folder_not_exists "<folder path>"; then
function if_folder_not_exists() {
  if [ -d $1 ]; then
    false;
  else
    true;
  fi
}


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
alias routes="bundle exec rails routes"
alias fs="bundle exec foreman start"
alias rs="bundle exec rails s -p 3000"
alias rst="bundle exec thin start -b 0.0.0.0"
alias rsp="bundle exec puma start -p 3000"
alias ru="bundle exec rackup -b 0.0.0.0"
# ----------------------------------------------


# git
# ----------------------------------------------
alias gs="git status"
alias gca="git commit --amend"
alias gl="git log2"
alias glm="git log --author=$(git config user.email)"
alias ga="git add"
alias gc="git commit -m"
# ----------------------------------------------


# Docker
# ----------------------------------------------
alias dc="docker compose"
alias start_docker="sudo systemctl start docker && sudo chmod 666 /var/run/docker.sock;"
alias stop_docker="sudo systemctl stop docker"
alias restart_docker="sudo systemctl restart docker && sudo chmod 666 /var/run/docker.sock;"
# ----------------------------------------------


# YouTube DL
# ----------------------------------------------
alias yt2mp3="youtube-dl -f bestaudio --extract-audio --audio-format mp3 --audio-quality 0 ";
alias yt="youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio' --merge-output-format mp4 ";
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
alias stop_mongo="sudo service mongodb stop"
alias restart_mongo="sudo service mongodb restart"
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
