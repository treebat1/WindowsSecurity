$cn = [ADSI]"WinNT://chdc"


$group = $cn.Create("Group","priv_GPO_AMQP")

$group.SetInfo()

$group.description = "Adjust memory quotas for a process"

$group.SetInfo()


$group = $cn.Create("Group","priv_GPO_ICAA")

$group.SetInfo()

$group.description = "Impersonate a client after authentication"

$group.SetInfo()


$group = $cn.Create("Group","priv_GPO_ISP")

$group.SetInfo()

$group.description = "Increase scheduling priority"

$group.SetInfo()


$group = $cn.Create("Group","priv_GPO_RPLT")

$group.SetInfo()

$group.description = "Replace a process-level token"

$group.SetInfo()
