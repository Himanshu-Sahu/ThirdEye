@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
set /p i=<C:\Users\Himanshu\Desktop\EMS\Var.txt
set /a img=%i%
C:\Users\Himanshu\Desktop\EMS\boxcutter-1.5\boxcutter -f C:\Users\Himanshu\Desktop\EMS\Screenshot\%img%.png
set /a i=%i%+1 
@echo %i% > C:\Users\Himanshu\Desktop\EMS\Var.txt
exit