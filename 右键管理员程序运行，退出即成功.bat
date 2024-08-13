@echo off
for /f "tokens=1" %%i in ('qwinsta ^| find /i "Administrator"') do set sessionname=%%i

tscon.exe %sessionname:~1% /dest:console

exit