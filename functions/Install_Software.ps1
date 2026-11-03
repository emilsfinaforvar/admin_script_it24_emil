Clear-Host
Write-Host "Manage software"

# Choose to uninstall / install
Write-Host "Do you want to install group software or individual?"
Write-Host "1 = group"
Write-Host "2 = individual"
$Bigchoices= Read-Host "1 for group and 2 for individual"
if ($Bigchoices -notin @("1", "2")) {
Write-Host "Pick either 1 or 2 please." -ForegroundColor Yellow
exit

} 
if ($Bigchoices -eq "1") {
Write-Host "Pick between these groups"
Write-Host "5 = Teacher"
Write-Host "6 = student"
Write-Host "7 = Admin"
Read-Host "Pick 5 for Teacher 6 for Student or 7 for admin"
}
else {
Proceeding   
}
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

