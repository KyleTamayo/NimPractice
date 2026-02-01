#!/bin/bash

# Begin Messages
DEBUG_MESSAGE="Building debug version"
RELEASE_MESSAGE="Building release version"
DANGER_MESSAGE="Buildling c-like 'danger' version"
# End Messages

# Begin Build Functions
remove_previous() {
  if [[ -f "practice" ]]; then
    rm -- "practice" || {
      echo "Failed to remove practice" >&2
    }
    echo "Removed Previous Version"
  fi
}

debug_build() {
  remove_previous
  nim c -r practice.nim
}

release_build() {
  remove_previous
  nim c -d:release -r practice.nim
}

danger_build() {
  remove_previous
  nim c -d:danger -r practice.nim
}

# End Build Functions

# Begin Main

compile_option=$1

case $compile_option in
  -b|--build)
  echo $DEBUG_MESSAGE
  debug_build
  ;;
  -r|--release)
  echo $RELEASE_MESSAGE
  release_build
  ;;
  -c|--clike)
  echo $DANGER_MESSAGE
  danger_build
  ;;
  --default)
  echo $DEBUG_MESSAGE
  debug_build
  ;;
esac

# End Main
