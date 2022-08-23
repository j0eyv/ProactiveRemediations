#Script removes the new Microsoft Teams consumer app on Windows 11.
#App is removed because this app can only be used with personal Microsoft accounts

try{
    Get-AppxPackage -Name MicrosoftTeams | Remove-AppxPackage -ErrorAction stop
    Write-Host "Microsoft Teams app successfully removed"

}
catch{
    Write-Error "Errorremoving Microsoft Teams app"
}