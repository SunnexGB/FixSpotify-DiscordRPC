HOSTS_FILE="/etc/hosts"

echo "Updating hosts file: $HOSTS_FILE"
echo "Run as a user with sudo(if required)."

SPOTIFY_ENTRIES=$(cat <<EOF
185.246.223.127 accounts.spotify.com
185.246.223.127 aet.spotify.com
185.246.223.127 ap-gew1.spotify.com
185.246.223.127 api-partner.spotify.com
185.246.223.127 api.spotify.com
185.246.223.127 appresolve.spotify.com
185.246.223.127 encore.scdn.co
185.246.223.127 gew1-spclient.spotify.com
185.246.223.127 login.app.spotify.com
185.246.223.127 login5.spotify.com
185.246.223.127 open.spotify.com
185.246.223.127 spclient.wg.spotify.com
185.246.223.127 www.spotify.com
185.246.223.127 xpui.app.spotify.com
EOF
)

sudo cp "$HOSTS_FILE" "${HOSTS_FILE}.bak"

echo "$SPOTIFY_ENTRIES" | sudo tee -a "$HOSTS_FILE" > /dev/null

echo "File updated successfully."
