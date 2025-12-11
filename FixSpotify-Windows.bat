@echo off
REM
set hostsFile=%SystemRoot%\System32\drivers\etc\hosts

REM
echo Updating hosts file: %hostsFile%
echo Requires running as administrator.

REM
(
echo 185.246.223.127 accounts.spotify.com
echo 185.246.223.127 aet.spotify.com
echo 185.246.223.127 ap-gew1.spotify.com
echo 185.246.223.127 api-partner.spotify.com
echo 185.246.223.127 api.spotify.com
echo 185.246.223.127 appresolve.spotify.com
echo 185.246.223.127 encore.scdn.co
echo 185.246.223.127 gew1-spclient.spotify.com
echo 185.246.223.127 login.app.spotify.com
echo 185.246.223.127 login5.spotify.com
echo 185.246.223.127 open.spotify.com
echo 185.246.223.127 spclient.wg.spotify.com
echo 185.246.223.127 www.spotify.com
echo 185.246.223.127 xpui.app.spotify.com
) >> "%hostsFile%"

echo File updated successfully.
pause
