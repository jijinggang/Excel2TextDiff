@echo off
set dp0=%~dp0
set dp0=%dp0:~0,-1%
REG ADD "HKCU\Software\TortoiseSVN\DiffTools" /v ".xlsx" /t REG_SZ /d "\"%dp0%\Excel2TextDiff.exe\" %%base %%mine" /f
REG ADD "HKCU\Software\TortoiseSVN\DiffTools" /v ".xls" /t REG_SZ /d "\"%dp0%\Excel2TextDiff.exe\" %%base %%mine" /f

echo "setup success."
pause