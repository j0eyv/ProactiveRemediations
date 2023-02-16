# The remediation will remove the VPN connection and trigger a Intune sync.
# VP Connection should be available again in a few minutes.

# Note: This is stil under construction. The Get-VPNConnection cmdlet does not work in this state and thus it will run the remediation script. That uses the Get-VPNConnection cmdlet to remove the current profile. Still need to find a way to remove the VPN profile without using Get-VPNConnection.

# Remove VPN
$VPNName = "AOVPN" # Write down the VPN Name as shown in the "Name" output.
Get-VPNConnection -Name $VPNName | Remove-VPN


# Force Sync Intune
Get-ScheduledTask | ? {$_.TaskName -eq 'Login Schedule created by enrollmet client'} | Start-ScheduledTask