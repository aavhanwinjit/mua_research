#!/bin/bash

flutter clean && flutter build ipa --export-options-plist=ExportOptions.plist
if [[ $? == 0 ]]; then
    echo "Copying IPA...."
    cp -f $PWD/build/ios/ipa/selfe_loans.ipa $HOME/Desktop/
    echo "IPA copied."
    echo "Renaming IPA...."
    mv $HOME/Desktop/selfe_loans.ipa $HOME/Desktop/SelfeLoans-$(date +%F).ipa
else
    echo "Flutter IPA Build Failed"
fi
