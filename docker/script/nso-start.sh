#!/bin/bash

echo "Waiting for device to be READY..."
while true; do
    STATUS=$(cat ~/device_status 2>/dev/null)
    if [ "$STATUS" == "READY" ]; then
        echo "Device is READY!"
        break
    fi
    sleep 5
done

cd /apk
adb install-multiple base.apk split_config.{x86_64,en,xhdpi}.apk
adb shell am start -n com.nintendo.znca/com.nintendo.coral.ui.boot.BootActivity

echo "Please login nintendo and join splatoon 3"

while true; do
  /app/docker-script/nso-get-tokens.sh > /dev/stdout 2> /dev/null
  exit_code=$?
  
  if [ $exit_code -eq 0 ]; then
    break
  else
    sleep 5
  fi
done

echo "Script complete"