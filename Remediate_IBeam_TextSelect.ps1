$Path = "HKCU:\Control Panel\Cursors"
$Name = "IBeam"
$Type = "String"
$Value = "C:\WINDOWS\Cursors\beam_il.cur"

IF(!(Test-Path $Path))
  {
    New-Item -Path $Path -Force | Out-Null
    New-ItemProperty -Path $Path -Name $name -Value $value -PropertyType $Type -Force | Out-Null
    }

ELSE {
    New-ItemProperty -Path $Path -Name $name -Value $value -PropertyType $Type -Force | Out-Null
    }
