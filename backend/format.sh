#!/bin/bash

### This script is used to run clang-format on the source files.

# Directory containing this bash script.
readonly DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

readonly PREV_DIR=$(pwd)

format () {
  find "$1" -name '*.hpp' -o -name '*.cpp' -o -name '*.h' | xargs clang-format -i
}

# Format the source files.
format "$DIR/src"
format "$DIR/include"

cd $PREV_DIR

exit 0
