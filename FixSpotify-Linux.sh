HOSTS_FILE="/etc/hosts"

echo "Updating hosts file: $HOSTS_FILE"
echo "Run as a user with sudo(if required)."

SPOTIFY_ENTRIES=$(cat <<EOF
50.7.85.220 spotify.com
50.7.85.220 api.spotify.com
50.7.85.220 appresolve.spotify.com
50.7.85.220 accounts.spotify.com
50.7.85.220 aet.spotify.com
50.7.85.220 gew1-spclient.spotify.com
50.7.85.220 login5.spotify.com
50.7.85.220 open.spotify.com
50.7.85.220 spotifycdn.com
50.7.85.220 www.spotify.com
50.7.85.220 spotifycdn.com

52.24.63.106 api.spotify.com
54.230.200.102 appresolve.spotify.com
52.84.211.27 accounts.spotify.com
3.220.229.198 aet.spotify.com
52.88.125.19 gew1-spclient.spotify.com
34.202.248.102 login5.spotify.com
34.236.183.125 open.spotify.com
54.174.128.23 spotifycdn.com
54.174.182.159 www.spotify.com
54.174.128.23 spotifycdn.com
EOF
)

sudo cp "$HOSTS_FILE" "${HOSTS_FILE}.bak"

echo "$SPOTIFY_ENTRIES" | sudo tee -a "$HOSTS_FILE" > /dev/null

echo "File succes update."
