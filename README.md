# GitHub Search

A simple application that meets the following requirements:

- Searching GitHub repositories based on provided keywords.
- Presenting details associated with the selected repository.
- Displaying a list of open issues or pull requests for the selected repository.

---

## Requirements

- Flutter SDK ([Install](https://docs.flutter.dev/get-started/install))
- Android SDK for Android builds (Easiest to install with [Android Studio](https://developer.android.com/studio))
- Xcode for iOS builds

---

## Setting up development environment

```bash
$ flutter pub get
$ mason get # optional
```

## Code generation

Repository relies on code generation. It can be run in two modes:

1. `flutter pub run build_runner build` - Runs generation only once and exits. Good for CI.
2. `flutter pub run build_runner watch` - Runs generation at startup and re-runs it when any file changes. Good for
   development.
---

## Design

### Dark Theme
![AppScreenshot](https://media.discordapp.net/attachments/1160505556029681744/1209274922853990450/dark_theme.png?ex=65e65408&is=65d3df08&hm=5d455dc4734833054629e680d6d5f8f2741b73baf326456dc59428cbdae38ffd&=&format=webp&quality=lossless&width=2882&height=315)

---

### Light Theme
![AppScreenshot](https://media.discordapp.net/attachments/1160505556029681744/1209274922623565884/light_theme.png?ex=65e65408&is=65d3df08&hm=578bb0ab7117ee4c3596b4ab494c586c0de59608a411d4f9c746cd0e34f9d9e8&=&format=webp&quality=lossless&width=2882&height=315)

---

## Screenshots and app flow

### Splash screen
![App Screenshot](https://media.discordapp.net/attachments/1160505556029681744/1209267780726161458/p0.png?ex=65e64d62&is=65d3d862&hm=87aa1a62117b9cd9466811e7f031937bd7bf1427de735b1b6389215b101bcbab&=&format=webp&quality=lossless&width=2130&height=1491)

### Home screen dark
From there user can search for repositories and change theme
![App Screenshot](https://media.discordapp.net/attachments/1160505556029681744/1209267781821005835/p1.png?ex=65e64d62&is=65d3d862&hm=b14969b77a473eba24d411fb98b4496f019746c5fc75914839d0c3843acf3362&=&format=webp&quality=lossless&width=2130&height=1491)

### Home screen light
Same screen but in light mode
![App Screenshot](https://media.discordapp.net/attachments/1160505556029681744/1209267783007731802/p2.png?ex=65e64d62&is=65d3d862&hm=e65a24a7b017c141ecef15cd740b7a0ca0993e672eb82ce991cec79c49ca8a8f&=&format=webp&quality=lossless&width=2130&height=1491)

### Issues screen
Page displaying issues reported for selected repository
![App Screenshot](https://media.discordapp.net/attachments/1160505556029681744/1209267784534597692/p3.png?ex=65e64d62&is=65d3d862&hm=3475a9f9dd54ca838cb9403b2e62f1705c3c99fdfd09a6eadfa81056c2dc1697&=&format=webp&quality=lossless&width=2130&height=1491)

### Pull Requests screen
Page displaying pull requests for selected repository
![App Screenshot](https://media.discordapp.net/attachments/1160505556029681744/1209267785813991424/p4.png?ex=65e64d63&is=65d3d863&hm=9cbfc40adc1550499059aec6b5f6c0cb9771fe77a7a53b83babb868fccd5d2b7&=&format=webp&quality=lossless&width=2130&height=1491)

## Tech Stack