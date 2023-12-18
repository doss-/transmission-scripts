# Install

chmod +x $(pwd)/add-torrent.sh
# ln -s $(pwd)/add-torrent.sh ~/.local/bin/add-torrent # TODO: nested source works weird
alias test="$(pwd)/add-torrent.sh"
 

# Usage
add-torrent:
  - by default assumes .torrent file in ~/Downloads
  - gets full path to a .torrent file
    E.g.:
    add-torrent ~/Downloads/rubble_and_crew_s1_web-dl_1080p__hurtom__by_urij546724_143.torrent