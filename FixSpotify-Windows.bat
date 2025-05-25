@echo off
REM
set hostsFile=%SystemRoot%\System32\drivers\etc\hosts

REM
echo Updating hosts file: %hostsFile%
echo Requires running as administrator.

REM
(
echo 204.12.192.220 gew1-spclient.spotify.com
echo 204.12.192.220 login5.spotify.com
echo 204.12.192.220 spotify.com
echo 204.12.192.220 api.spotify.com
echo 204.12.192.220 appresolve.spotify.com
echo 204.12.192.220 accounts.spotify.com
echo 204.12.192.220 aet.spotify.com
echo 204.12.192.220 open.spotify.com
echo 204.12.192.220 spotifycdn.com
echo 204.12.192.220 www.spotify.com
echo 204.12.192.220 spotifycdn.com
) >> "%hostsFile%"

echo File succes update.
pause
