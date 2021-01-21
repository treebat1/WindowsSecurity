foreach ($LocalGroup in Get-LocalGroup)
{
if (Get-LocalGroupMember $LocalGroup -Member john –ErrorAction SilentlyContinue)
{
$LocalGroup.Name
}
}