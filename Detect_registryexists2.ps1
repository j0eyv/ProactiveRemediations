# Launch remediation if registry exists: use -ne (not equals)
# Launch remediation if registry DOES NOT exists: use -eq (equals)

$Path = "HKLM:\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Run"
$Name = "Valuename"
$Value = "DATAHERE"

Try {
    $Registry = Get-ItemProperty -Path $Path -Name $Name -ErrorAction SilentlyContinue | Select-Object -ExpandProperty $Name
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