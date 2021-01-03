#!/bin/sh

echo "Picking up the SDK from root folder"
mv /Pla-refs-heads-master_2021-01-04-02-44-07/Pla.Mobile ./Pla.Mobile


cd Pla.Mobile
echo "Restoring solution nugets"
nuget restore Pla.Mobile.sln
cd Pla.Mobile.Android

echo "Compiling project"
msbuild /p:Configuration=Release /t:PackageForAndroid  Pla.Mobile.Android.csproj


echo "Extracting keystore data"
echo $1 | base64 --decode > keystore

echo "Signing the package"
jarsigner -verbose -sigalg MD5withRSA -digestalg SHA1 -keystore keystore -storepass $2 -signedjar ~/pla_signed.apk bin/Release/com.companyname.pla.mobile.apk Pla

echo "Creating properrly zipaligned package"
~/Library/Android/sdk/build-tools/30.0.1/zipalign -f -v 4 ~/pla_signed.apk ~/pla.apk

echo "Done"
ls -l ~/pla.apk
