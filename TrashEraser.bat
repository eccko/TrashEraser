@echo off

title: Compilation 01.10.2020

echo Writed by Mateusz Tomczyk - eccko

 rem  set __COMPAT_LAYER=RunAsInvoker  
 REGEDIT.EXE  /S  "%~dp0\reg_files\game_priority.reg"

 rem  set __COMPAT_LAYER=RunAsInvoker  
 REGEDIT.EXE  /S  "%~dp0\reg_files\disable_onedrive.reg"

 rem  set __COMPAT_LAYER=RunAsInvoker  
 REGEDIT.EXE  /S  "%~dp0\reg_files\unnecessary_staff.reg


Del /S /F /Q %temp%


powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -executionpolicy remotesigned -file %~dp0\ps_scripts\stock_apps.ps1' -verb RunAs}"

powershell -noprofile -command "&{ start-process powershell -ArgumentList '-noprofile -executionpolicy remotesigned -file %~dp0\ps_scripts\xbox.ps1' -verb RunAs}"

pause
