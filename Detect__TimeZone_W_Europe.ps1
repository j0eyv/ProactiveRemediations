$Path = "HKLM:\SSYSTEM\CurrentControlSet\Control\TimeZoneInformation"
$Name = "TimeZoneKeyName"
$Type = "STRING"
$Value = "W. Europe Standard Time"

Try {
    $Registry = Get-ItemProperty -Path $Path -Name $Name -ErrorAction Stop | Select-Object -ExpandProperty $Name
    If ($Registry -eq $Value){
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