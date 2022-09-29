=============================================================================================================================
#
Script Name: DetectW32TimeService.ps1
Description: Purpose of this script is to detect if "Windows Time Service" is running
Notes: No variable substitution should be necessary
#
=============================================================================================================================
Define Variables
$curSvcStat,$svcCTRSvc,$errMsg = "","",""
Main script
$svcCTRSvc = w32tm /resync
Try{
$svcCTRSvc = w32tm /resync
$svcCTRSvc = Get-Service "W32Time"
$curSvcStat = $svcCTRSvc.Status
}
Catch{
$errMsg = $_.Exception.Message
Write-Error $errMsg
exit 1
}
If ($curSvcStat -eq "Running"){
Write-Output $curSvcStat
exit 0
}
Else{
If($curSvcStat -eq "Stopped"){
Write-Output $curSvcStat
exit 1
}
Else{
Write-Error "Error: " + $errMsg
exit 1
}
}
SIG # Begin signature block
#Signature Removed - But will be available in the Intune portal.
SIG # End signature block