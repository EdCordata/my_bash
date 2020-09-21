#!/bin/bash


# Get working folder
function working_folder() {
  echo "$(pwd)"
}


# Returns string that is fixed size, even if provided input
# string is shorter/longer
#
# Example:
#
# var_name=$(string_fixed_length "word" 2) # => "wo"
# var_name=$(string_fixed_length "word" 4) # => "word"
# var_name=$(string_fixed_length "word" 5) # => "word "
#
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


# find_and_replace /path/to/file.txt "old tex" "new text"
find_and_replace() {
  sudo touch "$1"; # make sure file exists
  sudo sed -i -e "s/$2/$3/g" "$1";
}


# append_to_file "/path/to/file.txt" "text"
append_to_file() {
  sudo touch "$1"; # make sure file exists
  echo "$2" | sudo tee -a "$1";
}


# add_after /file/to/file.txt "some test to find" "\n  text to append"
add_after() { sudo sed -i -e "s/$2/$2$3/g" "$1"; }


function git_pull_all() {
  if [ -z $1 ]; then
    echo "Specify remote";
   else
    git branch -r | grep -v '\->' | while read remote; do git branch --track "${remote#$1/}" "$remote"; done
    git fetch --all
    git pull --all
  fi
}


function db_reset() {
  echo 'Executing:'
  echo ' * rake db:drop'
  echo ' * rake db:create'
  echo ' * rake db:migrate'
  echo '';
  rake db:environment:set RAILS_ENV=development;
  rake db:drop;
  rake db:create;
  rake db:migrate;
}


function db_mongo_reset() {
  echo 'Executing:'
  echo ' * rake db:mongoid:drop'
  echo '';
  rake db:environment:set RAILS_ENV=development;
  rake db:mongoid:drop;
}


function migrate() {
  echo 'Executing:';
  echo ' * rake db:migrate';
  echo '';
  rake db:environment:set RAILS_ENV=development;
  rake db:migrate;
}


function seed() {
  echo 'Executing:';
  echo ' * rake db:seed';
  echo '';
  rake db:environment:set RAILS_ENV=development;
  rake db:seed;
}


function fill() {
  echo 'Executing:';
  echo ' * rake db:fill';
  echo '';
  rake db:environment:set RAILS_ENV=development;
  rake db:fill;
}
