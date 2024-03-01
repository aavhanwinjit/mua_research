#!/bin/bash

# release

 flutter clean && flutter build apk --release --no-tree-shake-icons
 if [[ $? == 0 ]]; then
     echo "Copying APK...."
     cp -f "$PWD/build/app/outputs/flutter-apk/app-release.apk" "$HOME/Desktop/"
     echo "APK copied."
     echo "Renaming APK...."
     mv "$HOME/Desktop/app-release.apk" "$HOME/Desktop/SelfeLoans_$(date +%F).apk"
 else
     echo "Flutter APK Build Failed"
 fi


# debug
#    flutter build apk --debug --no-tree-shake-icons
#  if [[ $? == 0 ]]; then
#      echo "Copying APK...."
#      cp -f "$PWD/build/app/outputs/flutter-apk/app-debug.apk" "$HOME/Desktop/"
#      echo "APK copied."
#      echo "Renaming APK...."
#      mv "$HOME/Desktop/app-debug.apk" "$HOME/Desktop/SelfeLoans_$(date +%F).apk"
#  else
#      echo "Flutter APK Build Failed"
#  fi

# chmod +x send_apk_to_desktop.sh
# ./send_apk_to_desktop.sh