#Script detects the new Microsoft Teams consumer app on Windows 11.

if ($null -eq (Get-AppxPackage -Name MicrosoftTeams)) {
	Write-Host "Microsoft Teams client not found"
	exit 0
} Else {
	Write-Host "Microsoft Teams client found"
	Exit 1

}