=============================================================================================================================
#
Script Name: RemediateW32TimeService.ps1
Description: Purpose of this script is to start the "Windows Time Service" and change its startup type to Automatic
Notes: No variable substitution needed
#
=============================================================================================================================
Define Variables
$svcCur = "W32Time"
$curSvcStat,$svcCTRSvc,$errMsg = "","",""
$ctr = 0
First, let's make sure nothing has changed since detection and service exists and is stopped
Try{
$svcCTRSvc = Get-Service $svcCur
$curSvcStat = $svcCTRSvc.Status
}
Catch{
$errMsg = $_.Exception.Message
Write-Error $errMsg
Exit 1
}
If the service got started between detection and now (nested if) then return
If the service got uninstalled or corrupted between detection and now (else) then return the "Error: " + the error
If ($curSvcStat -ne "Stopped"){
If ($curSvcStat -eq "Running"){
Write-Output "Running"
Exit 0
}
Else{
Write-Error $errMsg
Exit 1
}
}
Okay, the service should be there and be stopped, we'll change the startup type and get it running
Try{
Start-Service $svcCur
$svcCTRSvc = Get-Service $svcCur
w32tm /resync
$curSvcStat = $svcCTRSvc.Status
While ($curSvcStat -eq "Stopped"){
Start-Sleep -Seconds 5
ctr++
if(ctr -eq 12){
Write-Output "Service could not be started after 60 seconds"
Exit 1
}
}
}
Catch{
$errMsg = $_.Exception.Message
Write-Error $errMsg
Exit 1
}
SIG # Begin signature block
#Removed the Signature
SIG # End signature block