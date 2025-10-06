set path=".\node-v24.8.0-win-x64"

call npm run extractTrans

call npm run genPo

call npm run genMo

call npm run replaceTransMobile

call npm run modifyVersion

mkdir .\out\assets\fonts
copy .\resource\other\floating_bitmap.fnt .\out\assets\fonts
mkdir .\out\assets\images
copy .\resource\other\realmgrinderui_new.png .\out\assets\images
copy .\resource\other\realmgrinderui2_new.png .\out\assets\images

call npm run repackApk

call npm run alignApk

call npm run signApk

echo copyToDist
rmdir /s /q .\dist\phone
mkdir .\dist\phone
copy .\out\android\realmgrinder_signed.apk .\dist\phone

pause 