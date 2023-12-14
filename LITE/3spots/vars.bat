@ECHO OFF
rem -------IGNORE
if "%1" equ "" (
    ECHO RUN MAIN.BAT TO START.
    pause
    exit
)
rem -------IGNORE




REM ---------------------------TOOL NAMES---------------------------
REM SET TOOL 1 NAME HERE
SET t1name=EXAMPLE


REM SET TOOL 2 NAME HERE
SET t2name=Another Example


REM SET TOOL 3 NAME HERE
SET t3name=TOOL3 NAME



REM ----------------------TOOL PATHS--------------------------------------------
REM RELATIVE PATH TO THE TOOL 1
SET t1path=tools
REM RELATIVE PATH TO THE TOOL 2
SET t2path=tools
REM RELATIVE PATH TO THE TOOL 3
SET t3path=

REM ----------------------TOOL FILENAMES------------------------------------------------------------
REM NAME OF TOOL 1 FILE
SET t1filename=exampletool.bat
REM NAME OF TOOL 2 FILE
SET t2filename=anotherexample.bat
REM NAME OF TOOL 3 FILE
SET t3filename=


REM ----------------------OTHER SETTINGS--------------------------
REM AFTER MULTITOOL IS COMPLETE: 1: GOTO VERY START 2: GO TO MENU START 3: PAUSE, THEN QUIT 4: INSTANT QUIT (NOT RECCOMENDED)
SET postmultitool=1
