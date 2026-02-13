#!/usr/bin/env bash
set -euo pipefail

cd adv_frontend
flutter pub get
flutter build web --release \
  --dart-define=API_BASE_URL="${API_BASE_URL:-http://127.0.0.1:8000}" \
  --dart-define=FIREBASE_API_KEY="${FIREBASE_API_KEY:-}" \
  --dart-define=FIREBASE_APP_ID="${FIREBASE_APP_ID:-}" \
  --dart-define=FIREBASE_MESSAGING_SENDER_ID="${FIREBASE_MESSAGING_SENDER_ID:-}" \
  --dart-define=FIREBASE_PROJECT_ID="${FIREBASE_PROJECT_ID:-}" \
  --dart-define=FIREBASE_AUTH_DOMAIN="${FIREBASE_AUTH_DOMAIN:-}" \
  --dart-define=FIREBASE_STORAGE_BUCKET="${FIREBASE_STORAGE_BUCKET:-}" \
  --dart-define=FIREBASE_MEASUREMENT_ID="${FIREBASE_MEASUREMENT_ID:-}" \
  --dart-define=FIREBASE_ANDROID_APP_ID="${FIREBASE_ANDROID_APP_ID:-}" \
  --dart-define=FIREBASE_IOS_APP_ID="${FIREBASE_IOS_APP_ID:-}" \
  --dart-define=FIREBASE_IOS_BUNDLE_ID="${FIREBASE_IOS_BUNDLE_ID:-}" \
  --dart-define=FIREBASE_MACOS_APP_ID="${FIREBASE_MACOS_APP_ID:-}" \
  --dart-define=FIREBASE_MACOS_BUNDLE_ID="${FIREBASE_MACOS_BUNDLE_ID:-}" \
  --dart-define=FIREBASE_WINDOWS_APP_ID="${FIREBASE_WINDOWS_APP_ID:-}" \
  --dart-define=FIREBASE_LINUX_APP_ID="${FIREBASE_LINUX_APP_ID:-}"
