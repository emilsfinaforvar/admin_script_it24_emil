$Name= ReadHost 
$Password= ReadHost -AsSecureString
$thing = @{
Name    = '$Name'
Password = $Password
FullName = 'AgreatUser' 
Description = 'Theusercreated.'
}

New-LocalUser @thing 
$UserArchive= $Name - $Password
$UserArchive| Add-Content "..\logs\logfile.log"