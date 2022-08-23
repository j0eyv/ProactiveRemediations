$Path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\"
$Key = "Installer"
$FullPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Installer"
$Name = "AlwaysInstallElevated"
$Type = "DWORD"
$Value = "0"


New-Item -Path $Path -Name $Key
New-ItemProperty -Path $FullPath -Name $Name -Value $Value  -PropertyType $Type
