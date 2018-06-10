@echo off 
set a=%1
set c=%2 
set sp=                                        
set sp1=              
set devlen="48"
set status="17"

IF [%1] == [] exit /b

setlocal
call :strlen result a
call :strlen result1 c
:strlen <resultVar> <stringVar>
(   
    setlocal EnableDelayedExpansion
    set "s=!%~2!#"
    set "len=0"
    for %%P in (4096 2048 1024 512 256 128 64 32 16 8 4 2 1) do (
        if "!s:~%%P,1!" NEQ "" ( 
            set /a len+=%%P
            set "s=!s:~%%P!"
        )
    )
)
( 
    endlocal
    set %~1=%len%
)



set month=%date:~4,2%
set year=%date:~12,2%
set day=%date:~7,2%

if %month:~0,1% == 0 set month=%month:~1,1%
if %day:~0,1% == 0 set day=%day:~1,1%
set datetime=%day%-%month%-%year%
if "%result%" geq "%devlen%" set /a dif = %devlen%-%result%
if "%result%" geq "%status%" set /a dif1 = %status%-%result1%


SETLOCAL EnableDelayedExpansion


set hrs=%time:~0,2%
set min=%time:~3,2%
set contime=%hrs%h:%min%m
echo %a% !sp:~0,%dif%! %c% !sp1:~0,%dif1%! %datetime% %contime% >C:\Users\Himanshu\Desktop\EMS\log1.txt
