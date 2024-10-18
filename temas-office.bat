@ECHO OFF

xcopy /y .\Normal.dotm "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates"
xcopy /y .\[nome_do_tema].thmx "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Document Themes"
xcopy /y .\[nome_do_tema].thmx "C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Templates\Document Themes"


echo.
echo.
echo.
echo.
echo.
echo.




SETLOCAL ENABLEDELAYEDEXPANSION
FOR /F %%A in ('"PROMPT $H&FOR %%B in (1) DO REM"') DO SET "BS=%%A"

CALL :TYPE "T E M A S      I N S T A L A D O S"

PAUSE>NUL
EXIT /B

:TYPE
SET "d[text]=%~1"
CALL :TYPELOOP
GOTO :EOF

:TYPELOOP
IF "%d[text]:~0,1%" == "#" (
    <NUL SET /P "=^!"
) else (
    <NUL SET /P "=d!BS!%d[text]:~0,1%"
)
SET "d[text]=%d[text]:~1%"
IF "%d[text]%" == "" (
    GOTO :EOF
) else (
    FOR /L %%J in (1, 100, 1000000) DO REM
    GOTO :TYPELOOP
)



timeout 5  
