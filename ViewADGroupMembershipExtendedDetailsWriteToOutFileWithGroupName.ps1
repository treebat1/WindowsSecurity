$ADGroupName = "app_cldrs_developers"
$ActiveDirectoryGroupName = @{label="ActiveDirectoryGroupName";expression={$ADGroupName}}

Get-ADGroupMember -Identity $ADGroupName | Get-ADObject -Properties Name, DisplayName, Title, Department |  Select-Object  -Property $ActiveDirectoryGroupName, Name, DisplayName, Title, Department| sort-object -property Name, DisplayName, Title, Department | FT ActiveDirectoryGroupName, Name, DisplayName, Title, Department| out-file U:\target\app_cldrs_developers.txt