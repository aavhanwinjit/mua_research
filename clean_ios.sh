#!/bin/bash

# Run 'flutter clean' to clean the Flutter project.
# fvm 
flutter clean

# Run 'flutter pub get' to get the project's dependencies.
# fvm 
flutter pub get

# Navigate to the 'ios' directory.
cd ios

# Run 'pod install' to install CocoaPods dependencies.
pod install --repo-update

# Navigate back to the project root directory.
cd ..

#clear console
# clear


# chmod +x clean_ios.sh 
# chmod +x send_ios_to_desktop.sh
# use
# ./clean_ios.sh
# ./send_ios_to_desktop.sh



