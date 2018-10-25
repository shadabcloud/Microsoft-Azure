Set-AzureRmVMExtension `
  -ExtensionName IIS `
  -VMName VM-APP-SIND `
  -SettingString '{"commandToExecute":"powershell Add-WindowsFeature Web-Server; powershell Add-Content -Path \"C:\\inetpub\\wwwroot\\Default.htm\" -Value $($env:computername)"}'
