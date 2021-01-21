--ViewFolderPermissionsForOneSpecificUser

Get-ChildItem "\\bia-nas\car\FileExchange" -recurse | 
    ForEach-Object { 
        $fname = $_.FullName
        $acl = Get-Acl $fname
        foreach ($e in $acl.Access) {
            If ( $e.AccessControlType -eq "Allow" -and 
                 $e.IdentityReference -eq "uboc-ad\svc_car_wherescape_p") 
            {
                Write-Host $fname
                break
            }
        }
    }