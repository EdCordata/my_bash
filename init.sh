#!/bin/bash


# Config
# ----------------------------------------------
MYBASH_REPO="https://github.com/EdCordata/my_bash.git";
# ----------------------------------------------


# MyBash
# ----------------------------------------------
MYBASH_PATH=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P );

# lib
source "$MYBASH_PATH/src/lib/updater.sh";
source "$MYBASH_PATH/src/lib/detect_os.sh";
source "$MYBASH_PATH/src/lib/git_prompt.sh";

# load shared files
source "$MYBASH_PATH/src/format/_shared.sh";
source "$MYBASH_PATH/src/git_config/_shared.sh";
source "$MYBASH_PATH/src/functions_and_aliases/_shared.sh";
source "$MYBASH_PATH/src/environment_variables/_shared.sh";

# load os-specific files
if [[ $MYBASH_OS != "unknown" ]] ; then
  source "$MYBASH_PATH/src/format/$MYBASH_OS.sh";
  source "$MYBASH_PATH/src/git_config/$MYBASH_OS.sh";
  source "$MYBASH_PATH/src/functions_and_aliases/$MYBASH_OS.sh";
  source "$MYBASH_PATH/src/environment_variables/$MYBASH_OS.sh";
fi
# ----------------------------------------------


# Output
# ----------------------------------------------
output_os_type=$(string_fixed_length "$MYBASH_OS" 15);

clear
echo "";
echo "  ┌────────────────────────────────────────────────┐";
echo "  │                                                │";
echo "  │   _______         ______               __      │";
echo "  │  |   |   |.--.--.|   __ \.---.-.-----.|  |--.  │";
echo "  │  |       ||  |  ||   __ <|  _  |__ --||     |  │";
echo "  │  |__|_|__||___  ||______/|___._|_____||__|__|  │";
echo "  │           |_____|                              │";
echo "  │                                                │";
echo "  │                                  By EdCordata  │";
echo "  │                                                │";
echo "  │  Console: $output_os_type                      │";
echo "  │                                                │";
echo "  └────────────────────────────────────────────────┘";
echo "";
# ----------------------------------------------
