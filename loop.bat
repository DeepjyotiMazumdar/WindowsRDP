@echo off
echo RDP DJ run
tasklist | find /i "ngrok.exe" >Nul && goto check || echo "Cannot get an army tunnel, ensure Ngrok_Auth_token is right in settings> Secrets> secret archive. Perhaps your previous VM still runs: https://dashboard.ngrok.com/status/tunnels" & ping 127.0.0.1 >Nul & exit
:check
ping 127.0.0.1 > nul
cls
echo RDP DJ run
goto check