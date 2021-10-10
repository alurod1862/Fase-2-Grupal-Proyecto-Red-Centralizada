PS C:\> Install-ADDSDomainController `
-DomainName "upv.es" `
-Credential (Get-Credential) `
-SiteName "Default-First-Site-Name" `
-InstallDNS:$true `
-NoGlobalCatalog:$false `
-CreateDNSDelegation:$false `
-ReplicationSourceDC "master-upv-es-r.upv.es" `
-CriticalReplicationOnly:$false `
-DatabasePath "C:\Windows\NTDS" `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true