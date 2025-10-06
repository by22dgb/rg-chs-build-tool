set path=".\node-v24.8.0-win-x64"

rmdir /s /q .\out\phone\scripts

call npm run exportScriptPhone

call npm run exportPcodePhone

call npm run exportABCPhone

call npm run extractTrans

call npm run findReplaceParamPhone

pause 