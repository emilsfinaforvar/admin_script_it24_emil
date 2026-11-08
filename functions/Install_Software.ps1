Clear-Host
Write-Host "Manage software"
$GroupFile = "$PSScriptRoot\..\data\groupedsoftware.txt"
# Choose to uninstall / install
Write-Host "Do you want to install group software or individual?"
Write-Host "1 = group"
Write-Host "2 = individual"
$Bigchoices= Read-Host "1 for group and 2 for individual"
if ($Bigchoices -notin @("1", "2")) {
Write-Host "Pick either 1 or 2 please." -ForegroundColor Yellow
exit
} 
 switch($Bigchoices) {  
"1" {

$Groups = Get-Content $GroupFile    

Write-Host "What group of programs do you want?"
Write-Host "5 for teacher"
Write-Host "6 for user"
Write-Host "7 for admin"
$GroupChoosen= Read-Host "Choose a group"
switch ($GroupChoosen) {
 "5" { $GroupChoosen = "Teacher"}
 "6" { $GroupChoosen = "User"}
 "7" { $GroupChoosen = "admin"}  
    default {
    if ($GroupChoosen -notin @("5", "6", "7")) {
    Write-Host "Incorrect decision, exiting program" -ForegroundColor Yellow
    return
    }

{
$Programs = $Groups.$Groupchoosen    
foreach ($Program in $Programs) { Write-Host "Installing $Program"} 
Write-Host "Installing group of programs"
Write-Host $GroupChoosen
}   
}     
}
}



   


"2" {
    Write-Host "What do you wanna do?"
    Write-Host "3 = Install"
    Write-Host "4 = Uninstall"

    $direction= Read-Host " install is 3 and 4 is uninstall"

    if ($direction -notin @("3", "4")) {
    Write-Host "Incorrect decision, exiting program" -ForegroundColor Yellow
    exit

    }
    $decision = Read-Host "Enter the id of the software, examples VideoLAN.VLC"
    $Wingetid = "VideoLAN.VLC","Google.Chrome" 

    if ($direction -eq "3") {
    Write-Host "Installing $decision" -ForegroundColor Blue
    winget install --id $Wingetid -e --silent
    }
    else {
    Write-Host "Uninstalling $decision" -ForegroundColor Blue
    winget uninstall --id $Wingetid -e --silent
    }
}
}