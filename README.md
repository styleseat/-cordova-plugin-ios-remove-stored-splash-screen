# Removes stored splash screen

Removes the splash screen that is stored in the `Library/SplashBoard` path.

## How to use

Simply add the plugin to your cordova project via the cli:
```sh
cordova plugin add https://github.com/Aphinith/cordova-plugin-remove-stored-splash-screen
```

## Background

When installing an app for the first time, the splash screen is stored inside the `/Library/SplashBoard` directory. When updating splash screens, the file at this path does not get updated and upon launching the app with the new splash screen, both the old and new splash screen will be rendered. This plugin removes the stored splash screen so only the new splash screen will be shown.