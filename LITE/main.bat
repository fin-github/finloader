@ECHO OFF
:codestart
cls
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

REM DEV SETTINGS, DO NOT TOUCH
mode CON: COLS=200 LINES=50
COLOR 9
call vars.bat 984
REM DO NOT CHANGE
SET ogpath=%~dp0
SET flver=1
TITLE Fin Loader V%flver%










:complete
cd %ogpath%
cls
if %postmultitool% == 1 (
    goto :main
)
if %postmultitool% == 2 (
    goto :codestart
)
if %postmultitool% == 3 (
    pause
    exit
)
if %postmultitool% == 4 (
    exit
)
goto :eof
:main





echo                                                                                                                           dddddddd
echo FFFFFFFFFFFFFFFFFFFFFF  iiii                        LLLLLLLLLLL                                                           d::::::d                                        
echo F::::::::::::::::::::F i::::i                       L:::::::::L                                                           d::::::d                                        
echo F::::::::::::::::::::F  iiii                        L:::::::::L                                                           d::::::d                                        
echo FF::::::FFFFFFFFF::::F                              LL:::::::LL                                                           d:::::d                                         
echo   F:::::F       FFFFFFiiiiiiinnnn  nnnnnnnn           L:::::L                  ooooooooooo     aaaaaaaaaaaaa      ddddddddd:::::d     eeeeeeeeeeee    rrrrr   rrrrrrrrr   
echo   F:::::F             i:::::in:::nn::::::::nn         L:::::L                oo:::::::::::oo   a::::::::::::a   dd::::::::::::::d   ee::::::::::::ee  r::::rrr:::::::::r  
echo   F::::::FFFFFFFFFF    i::::in::::::::::::::nn        L:::::L               o:::::::::::::::o  aaaaaaaaa:::::a d::::::::::::::::d  e::::::eeeee:::::eer:::::::::::::::::r 
echo   F:::::::::::::::F    i::::inn:::::::::::::::n       L:::::L               o:::::ooooo:::::o           a::::ad:::::::ddddd:::::d e::::::e     e:::::err::::::rrrrr::::::r
echo   F:::::::::::::::F    i::::i  n:::::nnnn:::::n       L:::::L               o::::o     o::::o    aaaaaaa:::::ad::::::d    d:::::d e:::::::eeeee::::::e r:::::r     r:::::r
echo   F::::::FFFFFFFFFF    i::::i  n::::n    n::::n       L:::::L               o::::o     o::::o  aa::::::::::::ad:::::d     d:::::d e:::::::::::::::::e  r:::::r     rrrrrrr
echo   F:::::F              i::::i  n::::n    n::::n       L:::::L               o::::o     o::::o a::::aaaa::::::ad:::::d     d:::::d e::::::eeeeeeeeeee   r:::::r            
echo   F:::::F              i::::i  n::::n    n::::n       L:::::L         LLLLLLo::::o     o::::oa::::a    a:::::ad:::::d     d:::::d e:::::::e            r:::::r            
echo FF:::::::FF           i::::::i n::::n    n::::n     LL:::::::LLLLLLLLL:::::Lo:::::ooooo:::::oa::::a    a:::::ad::::::ddddd::::::dde::::::::e           r:::::r            
echo F::::::::FF           i::::::i n::::n    n::::n     L::::::::::::::::::::::Lo:::::::::::::::oa:::::aaaa::::::a d:::::::::::::::::d e::::::::eeeeeeee   r:::::r            
echo F::::::::FF           i::::::i n::::n    n::::n     L::::::::::::::::::::::L oo:::::::::::oo  a::::::::::aa:::a d:::::::::ddd::::d  ee:::::::::::::e   r:::::r            
echo FFFFFFFFFFF           iiiiiiii nnnnnn    nnnnnn     LLLLLLLLLLLLLLLLLLLLLLLL   ooooooooooo     aaaaaaaaaa  aaaa  ddddddddd   ddddd    eeeeeeeeeeeeee   rrrrrrr   
echo -
echo -
echo -
echo -
echo -
COLOR 0A
echo [1] %t1name%
echo [2] %t2name%
echo [3] %t3name%
echo -
echo -
echo -
echo [4] RELOAD
echo [5] LOADER INFO
set /p usrinpt=
rem usrinpt means user input
if %usrinpt% == 1 (
    echo Youve Selected %t1name%
    cd %t1path%
    call %t1filename%
    pause
    goto :complete
)
if %usrinpt% == 2 (
    echo Youve Selected %t2name%
    cd %t2path%
    call %t2filename%
    pause
    goto :complete
)
if %usrinpt% == 3 (
    echo Youve Selected %t31name%
    cd %t3path%
    call %t3filename%
    pause
    goto :complete
)
if %usrinpt% == 4 (
    goto :codestart
)
if %usrinpt% == 5 (
    cls
    echo ----------FINS MULTITOOL LOADER------------
    echo VERSION: %flver%
    echo Fins Github: https://github.com/fin-github
    echo Fins Discord: ofinig
    pause
    goto :complete
)

COLOR
pause
