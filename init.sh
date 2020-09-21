#!/bin/bash


# Variables
# ==============================================================================
REPO="https://github.com/EdCordata/my_bash.git";
USERNAME="EdCordata";
GIT_NICKNAME="EdCordata";
GIT_EMAIL="EdCordata@gmail.com";
# ==============================================================================


# Load Files
# ==============================================================================
MYBASH_PATH=$( cd "$(dirname "${BASH_SOURCE}")" ; pwd -P );

# lib
source "$MYBASH_PATH/lib/updater.sh";
source "$MYBASH_PATH/lib/detect_os.sh";
source "$MYBASH_PATH/lib/git_prompt.sh"

# load shared files
source "$MYBASH_PATH/bash/format/_shared.sh";
source "$MYBASH_PATH/bash/aliases/_shared.sh";
source "$MYBASH_PATH/bash/functions/_shared.sh";
source "$MYBASH_PATH/bash/git_config/_shared.sh";
source "$MYBASH_PATH/bash/environment_variables/_shared.sh";

# load os specific files
if [[ $MYBASH_OS != "unknown" ]] ; then
  source "$MYBASH_PATH/bash/format/$MYBASH_OS.sh";
  source "$MYBASH_PATH/bash/aliases/$MYBASH_OS.sh";
  source "$MYBASH_PATH/bash/functions/$MYBASH_OS.sh";
  source "$MYBASH_PATH/bash/git_config/$MYBASH_OS.sh";
  source "$MYBASH_PATH/bash/environment_variables/$MYBASH_OS.sh";
fi
# ==============================================================================


# Output
# ==============================================================================
output_os_type=$(string_fixed_length "$MYBASH_OS" 15);

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
# ==============================================================================
