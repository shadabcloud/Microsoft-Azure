# Install Active Directory Domain Service.

Install-windowsfeature -name AD-Domain-Services -IncludeManagementTools

# Import ADDSDeployment Module.

Import-Module ADDSDeployment

# Configure First Domain Controller in Forest.

Install-ADDSForest
 -CreateDnsDelegation:$false `
 -DatabasePath "C:\Windows\NTDS" `
 -DomainMode "WinThreshold" `
 -DomainName "seed.com" `
 -SafeModeAdministratorPassword (ConvertTo-SecureString "" -AsPlainText -Force) `
 -DomainNetbiosName "SEED" `
 -ForestMode "WinThreshold" `
 -InstallDns:$true `
 -LogPath "C:\Windows\NTDS" `
 -NoRebootOnCompletion:$false `
 -SysvolPath "C:\Windows\SYSVOL" `
 -Force:$true
