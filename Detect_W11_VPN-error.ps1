# Windows 11 and Intune are no a great combination. When deploying VPN connections to Windows 11 via Intune, they get corrupt. The command get-vpnconnection does result in a strange error.
# Ths Proactive Remediation script checks if the VPN Profile is available. If not, an error will show and will trigger the remediation.

$VPNName = "AOVPN" # Write down the VPN Name as shown in the "Name" output.

Try {
    $GETVPN = Get-VPNConnection -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Name
    If ($GetVPN -eq $VPNName){
        Write-Output "Compliant"
        Exit 0
    } 
    Write-Warning "Not Compliant"
    Exit 1
} 
Catch {
    Write-Warning "Not Compliant"
    Exit 1
}