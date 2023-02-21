# Enable File and Printer Sharing

Set-NetFirewallRule -DisplayGroup "File and Printer Sharing" -Enabled True




# Allow ICMP traffic

netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4


# Enable Remote management

Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

# **SOURCE** puretechinfo.com/enable-remote-desktop-powershell-windows-10/




# Remove bloatware


Get-AppxPackage *skype* | Remove-AppPackage

# "skype" can be any application




# Enable Hyper-V


Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All



# Disable SMBv1, an insecure protocol


Set-SmbServerConfiguration -EnableSMB1Protocol $true

# Get-SmbClientConfiguration | Select EnableSMB1Protocol

# Set-SmbServerConfiguration -EnableSmb1Protocol 1

# Set-ItemProperty -Path "HKLM;\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters" SMB1 -Type DWORD -Value 1 -Force

#  Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -All 
