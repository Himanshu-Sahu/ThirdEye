@echo off
type C:\Users\Himanshu\Desktop\EMS\list.txt > C:\Users\Himanshu\Desktop\EMS\list1.txt
wmic product get name > C:\Users\Himanshu\Desktop\EMS\list.txt
findstr /vixg: C:\Users\Himanshu\Desktop\EMS\list.txt C:\Users\Himanshu\Desktop\EMS\list1.txt > C:\Users\Himanshu\Desktop\EMS\list3.txt


