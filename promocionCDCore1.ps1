#
# Script de Windows PowerShell para implementación de AD DS
#

Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation$false `
-DatabasePath CWindowsNTDS `
-DomainMode WinThreshold `
-DomainName upv.es `
-DomainNetbiosName UPV `
-ForestMode WinThreshold `
-InstallDns$true `
-LogPath CWindowsNTDS `
-NoRebootOnCompletion$false `
-SysvolPath CWindowsSYSVOL `
-Force$true
