HOSTS_FILE="/etc/hosts"

echo "Updating hosts file: $HOSTS_FILE"
echo "Run as a user with sudo(if required)."

SPOTIFY_ENTRIES=$(cat <<EOF
204.12.192.220 gew1-spclient.spotify.com
204.12.192.220 login5.spotify.com
204.12.192.220 spotify.com
204.12.192.220 api.spotify.com
204.12.192.220 appresolve.spotify.com
204.12.192.220 accounts.spotify.com
204.12.192.220 aet.spotify.com
204.12.192.220 open.spotify.com
204.12.192.220 spotifycdn.com
204.12.192.220 www.spotify.com
204.12.192.220 spotifycdn.com
EOF
)

sudo cp "$HOSTS_FILE" "${HOSTS_FILE}.bak"

echo "$SPOTIFY_ENTRIES" | sudo tee -a "$HOSTS_FILE" > /dev/null

echo "File succes update."
