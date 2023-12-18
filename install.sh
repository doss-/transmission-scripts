#!/bin/bash

#chmod +x $(pwd)/add-torrent.sh

# add alias to bashrc IDEMPOTENTLY
grep addtorrent ~/.bash_aliases || echo "alias addtorrent=\"$(pwd)/add-torrent.sh\"" >> ~/.bash_aliases