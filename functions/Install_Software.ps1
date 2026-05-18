Clear-Host
Write-Host "Manage software"

# Choose to uninstall / install

Write-Host "What do you wanna do?"
Write-Host "3 = Install"
Write-Host "4 = Uninstall"

$direction= Read-Host " install is 3 and 4 is uninstall"

if ($direction -notin @("3", "4")) {
Write-Host "Incorrect decision, exiting program" -ForegroundColor Yellow
exit

}

if ($direction -eq "3") {
    Write-Host "Installing $decision" -ForegroundColor Blue
    winget install --id VideoLAN.vlc -e --silent
}
else {
    Write-Host "Uninstalling $decision" -ForegroundColor Blue
    winget uninstall --id VideoLAN.vlc -e --silent
}

$decision = winget install --id VideoLAN.VLC -e --silent
 