﻿function get-localadmin {  
param ($strcomputer)  
  
$admins = Gwmi win32_groupuser –computer $strcomputer   
$admins = $admins |? {$_.groupcomponent –like '*"Administrators"'}  
  
$admins |% {  
$_.partcomponent –match “.+Domain\=(.+)\,Name\=(.+)$” > $nul  
$matches[1].trim('"') + “\” + $matches[2].trim('"')  
}  
}

Get-LocalAdmin chdc-s13-pvsp02