$Time = Get-Date
Write-Output "The date and time is $Time"
$Username = $env:Username
Write-Output "Your username is $Username"
$Computername = $env:Computername
Write-Output "The Computer is named $Computername"
$Systeminfo = Get-Ciminstance Win32_Operatingsystem|
Select-Object Caption,OSArchitecture,Version
Get-Process | Measure-Object -Average -Sum  -Maximum CPU
New-Item -Path "..\logs\" -Name "logfile.log" -ItemType "File" -Value "Loginfo from commands"
$Log = "$env:Computername - $Time - $Username - $Systeminfo"
$Log | Add-Content "..\logs\logfile.log"