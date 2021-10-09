#
# Script de Windows PowerShell para implementación de AD DS
#

$dominioFQDN = "upv.es"
$dominioNETBIOS = "upv"
$adminPass = "Hola01"
#Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$False `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "Default" `
-DomainName $dominioFQDN `
-DomainNetbiosName $dominioNETBIOS `
-SafeModeAdministratorPassword (ConvertTo-SecureString -string $adminPass -AsPlainText -Force)
-ForestMode "Default" `
-InstallDns:$True `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$False `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true
