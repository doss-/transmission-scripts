#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
cd $SCRIPT_DIR

# first time
if [ ! -d ./.venv ]; then
  echo "Installing Virtual Env to ./venv"
  python3 -m venv ./.venv
  source .venv/bin/activate
  pip install -r ./requirements.txt
else
  echo ".venv exists"
  # https://stackoverflow.com/questions/33400269/nested-source-commands-in-my-bash-script
  #PATH=$(pwd)/.venv/bin:$PATH source activate
  source .venv/bin/activate
fi



