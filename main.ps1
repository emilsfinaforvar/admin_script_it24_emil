Write-Host "What do you want to do?"
Write-Host "Create a user for 1"
Write-Host "Log useful data with 2"
Write-Host "And install software with 3"
$Themainmenu= Read-Host "Choose 1 2 or 3!" 

if ($Themainmenu -eq "1") {
Write-Host "Creating a user"
.\functions\Create-User.ps1 }

if ($Themainmenu -eq "2") {
Write-Host "Getting useful data"
.\functions\Log_base.ps1 }

if ($Themainmenu -eq "3") {
Write-Host "Letting you install software"
.\functions\Install_Software.ps1 }