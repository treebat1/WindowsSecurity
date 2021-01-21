$ADGroupName = "app_CL_SQL_DBAs"
$ActiveDirectoryGroupName = @{label="ActiveDirectoryGroupName";expression={$ADGroupName}}

Get-ADGroupMember -Identity $ADGroupName | Get-ADObject -Properties Name, DisplayName, Title, Department |  Select-Object  -Property $ActiveDirectoryGroupName, Name, DisplayName, Title, Department| sort-object -property ActiveDirectoryGroupName, Name, DisplayName, Title, Department | FT ActiveDirectoryGroupName, Name, DisplayName, Title, Department| out-file U:\target\SQL9DevADGroupMembership.txt -append