$Name= ReadHost 
$Password= ReadHost -AsSecureString
$thing = @{
Name    = '$Name'
Password = $Password
FullName = 'FirstUser' 
Description = 'Theusercreated.'
}

New-LocalUser @thing 