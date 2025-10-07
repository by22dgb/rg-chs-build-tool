set path=".\node-v24.8.0-win-x64"

rmdir /s /q .\out\scripts

call npm run exportScript

call npm run exportPcode

call npm run exportABC

pause 