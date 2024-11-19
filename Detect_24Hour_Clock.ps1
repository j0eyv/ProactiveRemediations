$Paths = @(
    @{ Path = "HKCU:\Control Panel\International"; Name = "sShortTime"; Value = "HH:mm" },
    @{ Path = "HKCU:\Control Panel\International"; Name = "sTimeFormat"; Value = "HH:mm:ss" }
)

$Compliant = $true

foreach ($Item in $Paths) {
    Try {
        $Registry = Get-ItemProperty -Path $Item.Path -Name $Item.Name -ErrorAction Stop | Select-Object -ExpandProperty $Item.Name
        If ($Registry -ne $Item.Value) {
            Write-Warning "$($Item.Name) is Not Compliant"
            $Compliant = $false
        }
    } 
    Catch {
        Write-Warning "$($Item.Name) is Not Compliant"
        $Compliant = $false
    }
}

If ($Compliant) {
    Write-Output "Compliant"
    Exit 0
} else {
    Exit 1
}