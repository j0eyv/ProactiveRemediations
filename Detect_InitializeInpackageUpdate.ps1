# Random placeholder/registry key with a false (not compliant) result to trigger the remediation.

$Path = "HKLM:\SOFTWARE\Insign.it\"
$Name = "InitializePlaceholder"
$Type = "DWORD"
$Value = "123456789"

Try {
    $Registry = Get-ItemProperty -Path $Path -Name $Name -ErrorAction Stop | Select-Object -ExpandProperty $Name
    If ($Registry -eq $Value){
        Write-Output "Compliant"
        #Exit 0
    } 
    Write-Warning "Not Compliant"
    #Exit 1
} 
Catch {
    Write-Warning "Not Compliant"
    #Exit 1
}