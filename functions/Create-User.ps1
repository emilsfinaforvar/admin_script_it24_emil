$Password= ReadHost -AsSecureString
$thing = @{
Name    = 'User1'
Password = $Password
FullName = 'FirstUser' 
Description = 'Theusercreated.'
}

New-LocalUser @thing 