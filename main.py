import sys
from transmission_rpc import Client

# Get file from first argument e.g
#   /path/to/rubble_and_crew_s1_web-dl_1080p__hurtom__by_urij546724_143.torrent
#torrent_file_name = sys.argv[1]
#torrent_file_path = f"/home/doss/Downloads/{torrent_file_name}"
torrent_file_path = sys.argv[1]

#http://dlinkrouter.local:9091
c = Client(host="dlinkrouter.local", port=9091, username="admin", password="admin")

f = open(torrent_file_path, 'rb') # opening a binary file
content = f.read() # reading all lines
c.add_torrent(content)
f.close() # closing file object

print("Torrent added.")