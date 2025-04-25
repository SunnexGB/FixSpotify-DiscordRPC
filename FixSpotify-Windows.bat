@echo off
REM
set hostsFile=%SystemRoot%\System32\drivers\etc\hosts

REM
echo Updating hosts file: %hostsFile%
echo Requires running as administrator.

REM
(
    echo 50.7.85.220 spotify.com
    echo 50.7.85.220 api.spotify.com
    echo 50.7.85.220 appresolve.spotify.com
    echo 50.7.85.220 accounts.spotify.com
    echo 50.7.85.220 aet.spotify.com
    echo 50.7.85.220 gew1-spclient.spotify.com
    echo 50.7.85.220 login5.spotify.com
    echo 50.7.85.220 open.spotify.com
    echo 50.7.85.220 spotifycdn.com
    echo 50.7.85.220 www.spotify.com
    echo 50.7.85.220 spotifycdn.com
) >> "%hostsFile%"

REM
(
    echo 52.24.63.106 api.spotify.com
    echo 54.230.200.102 appresolve.spotify.com
    echo 52.84.211.27 accounts.spotify.com
    echo 3.220.229.198 aet.spotify.com
    echo 52.88.125.19 gew1-spclient.spotify.com
    echo 34.202.248.102 login5.spotify.com
    echo 34.236.183.125 open.spotify.com
    echo 54.174.128.23 spotifycdn.com
    echo 54.174.182.159 www.spotify.com
    echo 54.174.128.23 spotifycdn.com
) >> "%hostsFile%"

echo File succes update.
pause
