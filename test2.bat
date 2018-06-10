@echo off
if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
type C:\Users\Himanshu\Desktop\EMS\log1.txt >> C:\Users\Himanshu\Desktop\EMS\log.txt
exit