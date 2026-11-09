Clear-Host
Write-Host "Manage software"
$GroupFile = "$PSScriptRoot\..\data\groupedsoftware.json"
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

$Groups = Get-Content $GroupFile | ConvertFrom-Json   
$Programs = $Groups.$Groupchoosen
Write-Host "What group of programs do you want?"
Write-Host "5 for teacher"
Write-Host "6 for user"
Write-Host "7 for admin"
$Groupchoice = Read-Host "Choose a group"
if ($Groupchoice -eq "5") { 
$Groupchoosen = "Google.Chrome"
$Groupidea = "Notepad++.Notepad++"
$Groupthing = "7zip.7zip"
Write-Host "Installing software group" 
Write-Host $Groupchoosen
Write-Host $Groupidea 
Write-Host $Groupthing
New-Item -Path "..\data\" -Name "Groupedsoftwareresults.log"
$LogFile = "$GroupChoosen - $Groupidea - $Groupthing"
$LogFile | Add-Content "..\data\Groupsoftwareresults.log"
}
if ($Groupchoice -eq "6") { 
$Groupchoosen = "Mozilla.Firefox"
$Groupidea = "VideoLAN.VLC"
$Groupthing = "7zip.7zip"
Write-Host "Installing software group" 
Write-Host $Groupchoosen 
Write-Host $Groupidea 
Write-Host $Groupthing
New-Item -Path "..\data\" -Name "Groupedsoftwareresults.log"
$LogFile = "$GroupChoosen - $Groupidea - $Groupthing"
$LogFile | Add-Content "..\data\Groupsoftwareresults.log" 
}
if ($Groupchoice -eq "7") { 
$Groupchoosen = "Mozilla.Firefox"
$Groupidea = "Git.Git"
$Groupthing = "Notepad++.Notepad++"
Write-Host "Installing software group" 
Write-Host $Groupchoosen
Write-Host $Groupidea 
Write-Host  $Groupthing  
New-Item -Path "..\data\" -Name "Groupedsoftwareresults.log"
$LogFile = "$GroupChoosen - $Groupidea - $Groupthing"
$LogFile | Add-Content "..\data\Groupsoftwareresults.log"
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