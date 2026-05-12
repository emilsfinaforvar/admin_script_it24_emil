Write-Output "Current username is $Username"
$Time = Get-Date
$Username = env:Username
$Computername = env:Computername
$Systeminfo = Get-Ciminstance Win32_Operatingsystem|
Select-Object Caption,OSArchitecture,Version
$Log = $env:Computername - $Time - $Username - $Systeminfo
$Log | Add-Content "..\logs\logfile.log"