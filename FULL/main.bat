@ECHO OFF
goto :main
:moduleinstall
pip install colorama
goto :eof

:main
SET cr=finloader
SET n=

REM DO NOT DELETE
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"


if %errorlevel% neq 0 (
    goto UACPrompt
) else (
    goto gotAdmin
)

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    if %cr% neq f%n%in%n%lo%n%ad%n%er ( echo THI%n%S PRO%n%G%n%RA%n%M IS P%n%IR%n%AT%n%ED FROM fin-gi%n%th%n%ub!!
        pause
        exit
    )
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
    REM copped from chatgpt

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

REM DO NOT DELETE



mode CON: COLS=200 LINES=50
COLOR 9
REM DO NOT CHANGE
SET ogpath=%~dp0
SET flver=1
TITLE Fin Loader V%flver%
goto :mainloader

:moduleerr
echo Sorry! We have to fix some things. Please wait...
goto :moduleinstall
cls
echo Fixed!
pause
goto :mainloader

goto :eof

:mainloader
cls
python -c "import colorama" 2>nul
if errorlevel 1 (
    goto :moduleerr
)
cd %ogpath%
py runner.py frombatch 111 222
if errorlevel == 9009 (
    echo This is probably a developer problem. We could not find the filename.
)
pause
goto :mainloader
