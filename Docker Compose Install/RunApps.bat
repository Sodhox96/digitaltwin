@Echo off
Pushd "%~dp0"
popd


START cmd /k call runDB.lnk
start cmd /k call runService.lnk
timeout 5 >nul

docker rm webservice postgres