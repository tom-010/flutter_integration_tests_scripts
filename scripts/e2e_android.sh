#!/bin/bash

set -e

AVD_NAME=$(emulator -list-avds 2>&1 | head -n 1)
nohup emulator -avd $AVD_NAME 2> /dev/null &

while [ $(adb devices | wc -l) -eq "2" ]
do
    echo "Waiting for emulator or device..."
    sleep 1
done

flutter test integration_test -d android