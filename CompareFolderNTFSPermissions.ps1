$ACLone = get-acl "C:\temp"
$ACLtwo = get-acl "C:\temp\netapp"
$ACLthree = get-acl "C:\Windows"
write-host "Compare 1 and 2 ----------------------"
Compare-Object -referenceobject $ACLone -differenceobject $ACLtwo -Property access | select sideindicator -ExpandProperty access | ft
write-host "Compare 1 and 3 ----------------------"
Compare-Object -referenceobject $ACLone -differenceobject $ACLthree -Property access | select sideindicator -ExpandProperty access | ft