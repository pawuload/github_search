# GitHub Search

A simple application that meets the following requirements:

- Searching GitHub repositories based on provided keywords.
- Presenting details associated with the selected repository.
- Displaying a list of open issues and pull requests for the selected repository.

---

## Requirements

- Flutter SDK ([Install](https://docs.flutter.dev/get-started/install))
- Android SDK for Android builds (Easiest to install with [Android Studio](https://developer.android.com/studio))
- Xcode for iOS builds

---

## Setting up development environment
To run the project make sure you have installed [FVM](https://fvm.app/documentation/getting-started/installation).
<br>
You can check what version of Flutter is used in `.fvmrc` file.
```bash
$ fvm flutter pub get
```

## Code generation

Repository relies on code generation. It can be run in two modes:

1. `fvm flutter pub run build_runner build` - Runs generation only once and exits. Good for CI.
2. `fvm flutter pub run build_runner watch` - Runs generation at startup and re-runs it when any file changes. Good for
   development.
---


## Screenshots and app flow

### Splash screen

<img src="https://github.com/pawuload/github_search/blob/main/assets/screenshots/splash.png" width="260">

### Home screen dark
From there user can search for repositories and change theme

<img src="https://github.com/pawuload/github_search/blob/main/assets/screenshots/home_dark.png" width="260">

### Home screen light
Same screen but in light mode

<img src="https://github.com/pawuload/github_search/blob/main/assets/screenshots/home_light.png" width="260">

### Issues screen
Page displaying issues reported for selected repository

<img src="https://github.com/pawuload/github_search/blob/main/assets/screenshots/issues.png" width="260">

### Pull Requests screen
Page displaying pull requests for selected repository

<img src="https://github.com/pawuload/github_search/blob/main/assets/screenshots/pull_requests.png" width="260">

## Tech Stack

- ### State Management: [utopia_hooks](https://hooks.utopiasoft.io/)
- ### Platform API: [dio](https://pub.dev/packages/dio)
- ### Code generators: [freezed](https://pub.dev/packages/freezed)
- ### Localization: [flutter_sheet_localization](https://pub.dev/packages/flutter_sheet_localization)
