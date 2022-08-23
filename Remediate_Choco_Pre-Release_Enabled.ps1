$Path = "HKLM:\SOFTWARE\WOW6432Node\Insign.it\InPackageUpdater"
$Name = "Prerelease"
$Type = "DWORD"
$Value = 1

IF(!(Test-Path $Path))
  {
    New-Item -Path $Path -Force | Out-Null
    New-ItemProperty -Path $Path -Name $name -Value $value -PropertyType $Type -Force | Out-Null
    }

ELSE {
    New-ItemProperty -Path $Path -Name $name -Value $value -PropertyType $Type -Force | Out-Null
    }
