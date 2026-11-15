$Log = "$PSScriptRoot\.\logs\logfile.log"
$Mythings = Read-Host user and password
$Mylog = "$Mythings"
$MyLog | Add-Content ".\logs\logfile.log"
$UserArchive = New-LocalUser # Creates a user and asks for details on it without admin this command fails 
$UserArchive | Add-Content ".\logs\logfile.log"