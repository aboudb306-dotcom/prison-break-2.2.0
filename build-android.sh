#!/usr/bin/env bash
set -euo pipefail
npm install
npx cordova platform add android@14.0.1 || true
npx cordova build android --debug
printf '\nAPK path: platforms/android/app/build/outputs/apk/debug/app-debug.apk\n'
