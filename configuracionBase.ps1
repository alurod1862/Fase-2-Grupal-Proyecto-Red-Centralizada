$nameServer="master-upv-es-replica"
$addressIP="192.168.1.202"
$networkInternal="Ethernet 1"
Rename-Computer -NewName "master-upv-es-replica"
Get-NetAdapter –name $networkInternal | Remove-NetIPAddress -Confirm:$false
Get-NetAdapter –name $networkInternal | New-NetIPAddress –addressfamily IPv4 –ipaddress 192.168.1.202 –prefixlength 24 –type unicast
Restart-Computer -force
