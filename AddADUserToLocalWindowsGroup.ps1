$DomainUser = "svc_rl_monitoring"
$LocalGroup = "Distributed COM Users"
$Computer   = $env:computername
$Domain     = $env:userdomain

([ADSI]"WinNT://$Computer/$LocalGroup,group").psbase.Invoke("Add",([ADSI]"WinNT://$Domain/$DomainUser").path)