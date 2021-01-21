$Drives = Get-PSDrive -PSProvider 'FileSystem'

foreach($Drive in $drives) {

    Get-ChildItem -Path $Drive.Root -Recurse | where-object {($_.PsIsContainer)} | Get-ACL | Select-Object PATH -ExpandProperty Access | Where-Object identityreference -in "CHDC-CLS-PHSQL9\ReportUsers"
	Write-Output $Drive

}