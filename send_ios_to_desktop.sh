#!/bin/bash

fvm flutter clean && fvm flutter build ipa --export-options-plist=ExportOptions.plist

if [[ $? == 0 ]]; then
    echo "Copying IPA...."
    # Remove spaces from filename
    src="$PWD/build/ios/ipa/MUA KYC.ipa"
    dest="$HOME/Desktop/"
    filename=$(basename "$src")
    filename=${filename// /_}
    cp -f "$src" "$dest$filename"
    echo "IPA copied."
    
    echo "Renaming IPA...."
    current_date=$(date +%d%m%Y)
    new_filename=${filename// /}
    new_filename=${new_filename//ipa/ipa}
    mv "$dest${filename// /}" "$dest/MUA_KYC_${current_date}.ipa"
else
    echo "Flutter IPA Build Failed"
fi