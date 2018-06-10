Register-WmiEvent -Class win32_VolumeChangeEvent -SourceIdentifier volumeChange
do{
$newEvent = Wait-Event -SourceIdentifier volumeChange
$eventType = $newEvent.SourceEventArgs.NewEvent.EventType
$eventTypeName = switch($eventType)
{
1 {"Configuration changed"}
2 {"Device arrival"}
3 {"Device removal"}
4 {"docking"}
}
if ($eventType -eq 2 -or $eventType -eq 3)
{
$driveLetter = $newEvent.SourceEventArgs.NewEvent.DriveName
$driveLabel = ([wmi]"Win32_LogicalDisk='$driveLetter'").VolumeName
start-sleep -seconds 1
start-process "C:\Users\Himanshu\Desktop\EMS\test2.bat"
}
Remove-Event -SourceIdentifier volumeChange
} while (1-eq1) #Loop until next event
Unregister-Event -SourceIdentifier volumeChange
exit