#!/bin/bash

cd /apk
adb install-multiple base.apk split_config.{x86_64,en,xhdpi}.apk
adb shell am start -n com.nintendo.znca/com.nintendo.coral.ui.boot.BootActivity

echo "Connect to http://localhost:6080"
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
exit 0
