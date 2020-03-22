# This script can be "sourced" from any directory as long as it is
# placed inside the directory to be added to the PYTHONPATH.

#Get the directory of this script
TARGET=${BASH_SOURCE[0]:-${0}}
TARGET_PATH="$( cd "$(dirname "$TARGET")" ; pwd -P )"

#Add to pythonpath
echo Adding \"$TARGET_PATH\" to PYTHONPATH
export PYTHONPATH=${TARGET_PATH}:$PYTHONPATH
