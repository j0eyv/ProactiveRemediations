$version = 'C1'
if(((Get-MpPreference).MAPSReporting -eq 2) -and ((Get-MpPreference).SubmitSamplesConsent) -eq 3) {
    Write-Output "$version COMPLIANT"
    exit 0
} else {
    Write-Output "$version NON-COMPLIANT"
    exit 1
}