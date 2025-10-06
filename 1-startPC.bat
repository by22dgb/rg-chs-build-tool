set path=".\node-v24.8.0-win-x64"

call npm run extractTrans

call npm run genPo

call npm run genMo

call npm run replaceTrans


echo copyToDist
rmdir /s /q .\dist\pc
mkdir .\dist\pc
copy .\out\RealmGrinderDesktop.swf .\dist\pc
mkdir .\dist\pc\fonts
copy .\resource\other\floating_bitmap.fnt .\dist\pc\fonts
mkdir .\dist\pc\images
copy .\resource\other\realmgrinderui_new.png .\dist\pc\images
copy .\resource\other\realmgrinderui2_new.png .\dist\pc\images

pause 