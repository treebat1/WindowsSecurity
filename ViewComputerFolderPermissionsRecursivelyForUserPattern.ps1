$Drives = Get-PSDrive -PSProvider 'FileSystem'

foreach($Drive in $drives) {

    Get-ChildItem -Path $Drive.Root -Recurse | where-object {($_.PsIsContainer)} | Get-ACL | Select-Object PATH -ExpandProperty Access | Where-Object {($_.identityreference -like "*Go_Support*" -or $_.identityreference -like "*CLSReport*" -or $_.identityreference -like "*Call*" -or $_.identityreference -like "*Radar*" -or $_.identityreference -like "*RANumber*"-or $_.identityreference -like "*Reader*")}
		
    Write-Output $Drive
}