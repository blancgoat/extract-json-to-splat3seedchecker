#!/bin/bash

echo "Waiting for device to be READY..."
while true; do
    STATUS=$(cat ~/device_status 2>/dev/null)
    if [ "$STATUS" == "READY" ]; then
        echo "Device is READY!"
        break
    fi
    sleep 1
done

/app/docker-script/nso-start.sh

# 스크립트 종료 코드 확인
EXIT_CODE=$?

# 종료 코드가 0이면 컨테이너 종료
if [ $EXIT_CODE -eq 0 ]; then
    echo "Check ./output directory and get 'gear_####.json'. Upload to Splat3 Seed Checker!"
    echo "Job done. Container shutdown..."
    # 모든 프로세스에 SIGTERM 보내기
    kill -TERM 1
fi

# 원래 스크립트의 종료 코드 유지
exit $EXIT_CODE
