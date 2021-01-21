#View All Folder Security Groups with Permissions
Get-ChildItem -Path D:\Car\Prod\Inbound -Recurse | where-object {($_.PsIsContainer)} | Get-ACL | Format-List