#!/bin/sh

ls ~/

echo "I will not build it yet..."

# cd Pla

# cd Pla.Mobile
# nuget restore Pla.Mobile.sln
# cd Pla.Mobile.Android

# msbuild /p:Configuration=Release /t:PackageForAndroid  Pla.Mobile.Android.csproj
# echo $KEYSTORE | base64 --decode > keystore
        
# jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore keystore -storepass $KEYSTORE_PASSWORD -signedjar ~/pla_signed.apk bin/Release/com.companyname.pla.mobile.apk Pla
# ~/Library/Android/sdk/build-tools/30.0.1/zipalign -f -v 4 ~/pla_signed.apk ~/pla.apk
        
