#!/bin/bash

# # since add-torrent.sh is symlinked into ~/.local/bin, resolve path like this
# while [ -L "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
#   DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )
#   SOURCE=$(readlink "$SOURCE")
#   [[ $SOURCE != /* ]] && SOURCE=$DIR/$SOURCE # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
# done
# DIR=$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )

DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

echo $DIR
cd $DIR

FILE_NAME=$1
if [ -z "$FILE_NAME" ]; then
  FILE_NAME=$(ls -tr ~/Downloads/*.torrent | tail -1)
fi
if [ ! -e $FILE_NAME ]; then
  echo "No such file!! $FILE_NAME"
  echo "Profide full path to .torrent file"
  exit 1
fi

echo "$(pwd)"
source ./setup.sh

echo "Adding: $FILE_NAME"
echo "$(pwd)"
python3 main.py $FILE_NAME
