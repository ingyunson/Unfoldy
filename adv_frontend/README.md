# ADV_AI FRONTEND

[한국어](READEME.ko.md)

This is a frontend project of ADV_AI project.

## Getting Started

This project is a starting point for a Flutter application.

### Prerequisites

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Dart](https://dart.dev/get-dart)

### Installation

1. Clone the repository:

    ```sh
    git clone https://github.com/your-repo/adv_frontend.git
    ```

2. Navigate to the project directory:

    ```sh
    cd adv_frontend
    ```

3. Get the dependencies:

    ```sh
    flutter pub get
    ```

### Running the App

To run the app on an emulator or connected device:

```sh
flutter run
```

### Running on Web (mobile-sized viewport)

The web app is locked to a mobile viewport (`390x844`) so users see a phone-like screen on desktop browsers.

```sh
flutter run -d chrome --dart-define=API_BASE_URL=http://localhost:8000
```

If you use Firebase, pass values with `--dart-define`:

```sh
flutter run -d chrome \
  --dart-define=API_BASE_URL=http://localhost:8000 \
  --dart-define=FIREBASE_API_KEY=... \
  --dart-define=FIREBASE_APP_ID=... \
  --dart-define=FIREBASE_MESSAGING_SENDER_ID=... \
  --dart-define=FIREBASE_PROJECT_ID=...
```

## Vercel Deployment

This repository includes Vercel config for Flutter web deployment.

1. Import this repository in Vercel.
2. Set project root to repository root.
3. Add environment variables in Vercel Project Settings:
   - `API_BASE_URL`
   - Firebase variables (`FIREBASE_API_KEY`, `FIREBASE_APP_ID`, etc.) if needed.
4. Deploy.

Vercel uses:

- `vercel.json` for output + SPA rewrite
- `scripts/build_web.sh` for Flutter web build

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
