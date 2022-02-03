#!/bin/bash

# See: https://docs.flutter.dev/cookbook/testing/integration/introduction#5a-mobile

set -e 

./scripts/e2e_linux.sh
./scripts/e2e_chrome.sh
./scripts/e2e_android.sh

echo "====================="
echo "E2E Tests successful!"
echo "====================="
