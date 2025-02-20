#!/bin/bash
# Timeout in seconds (set to 0 for manual disconnect)

docker compose up -d
sleep 15

  

# Connect to RDP

xfreerdp3 /u:"MyWindowsUser" /p:"MyWindowsPassword" /v:127.0.0.1 /cert:tofu &

PID=$!

# If timeout is set, wait and then disconnect
sleep 10
kill $PID
echo "RDP session disconnected after $TIMEOUT seconds."

./setup.sh --user --uninstall

./setup.sh --user --setupAllOfficiallySupportedApps