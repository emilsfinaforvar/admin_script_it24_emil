$Time = Get-Date # Gets the date and time
Write-Output "The date and time is $Time" # Writes the results of getting date and time.
$Username = $env:Username # Gets the username of the one running the script.
Write-Output "Your username is $Username" # Shows results of getting the username.
$Computername = $env:Computername # Gets the name of the computer which runs the script.
Write-Output "The Computer is named $Computername" # Writes results of getting computer name.
$Systeminfo = Get-Ciminstance Win32_Operatingsystem| # Gets a Ciminstance Win32_Operatingsystem.
Select-Object Caption,OSArchitecture,Version,FreeVirtualMemory # Shows only windows edition Version and 64 bits architechture.
Get-Process | Measure-Object -Average -Sum  -Maximum CPU # Gets all processes and then shows all cpu used by them
$MemoryInfo = Get-ComputerInfo "*memory" # Gets the info on how much memory is used and how much is free. 
$Mycomputer = Read-Host Computername 
New-Item -Path "..\logs\" -Name "logfile.log" -ItemType "File" -Value "Loginfo from commands" # Creates a logfile if there isn't one already if there is gives an error that it already exists.
$Log = "$env:Computername - $Time - $Username - $Systeminfo - $MemoryInfo - $Mycomputer" # Has all the info generated from commands.
$Log | Add-Content "..\logs\logfile.log" # Puts all the info in the logfile.