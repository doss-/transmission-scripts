#!/bin/bash

#chmod +x $(pwd)/add-torrent.sh

# add alias to bashrc IDEMPOTENTLY
grep my-addtorrent ~/.bash_aliases || echo "alias my-addtorrent=\"$(pwd)/add-torrent.sh\"" >> ~/.bash_aliases