Get-ChildItem -Path \\bi\ck\kk -Recurse | where-object {($_.PsIsContainer)} | Get-ACL | Select-Object PATH -ExpandProperty Access | Where-Object identityreference -in "uboc-ad\svc_car_wherescape_p", "uboc-ad\svc_car_dm_sql_p", "uboc-ad\svc_car_dm_sqlagnt_p"


Get-ChildItem -Path "z:\" -Recurse | where-object {($_.PsIsContainer)} | Get-ACL | Select-Object PATH -ExpandProperty Access | Where-Object identityreference -in "CHDC-CLS-PHSQL9\Users"


Get-ChildItem -Path "d:\" -Recurse | where-object {($_.PsIsContainer)} | Get-ACL | Select-Object PATH -ExpandProperty Access | Where-Object identityreference -in "uboc-ad\cl_datamart_admins"
