$version = 'R1'
try {
    Set-MpPreference -DisableRealtimeMonitoring $false
    Write-Output "$version Remediated"
    exit 0
}
catch {
    Write-Output "$version Failed"
    exit 1
}