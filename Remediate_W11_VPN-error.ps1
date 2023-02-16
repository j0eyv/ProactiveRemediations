﻿# The remediation will remove the VPN connection and trigger a Intune sync.
# VP Connection should be available again in a few minutes.

# Remove VPN
$VPNName = "AOVPN" # Write down the VPN Name as shown in the "Name" output.
Rasphone -r "$VPNName"

# Force Sync Intune
Get-ScheduledTask | ? {$_.TaskName -eq 'Login Schedule created by enrollmet client'} | Start-ScheduledTask