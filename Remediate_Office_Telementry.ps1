$Path = "HKCU:\Software\Policies\Microsoft\office\common\"
$Key = "clienttelemetry"
$FullPath = "HKCU:\Software\Policies\Microsoft\office\common\clienttelemetry"
$Name = "DisableTelemetry"
$Type = "DWORD"
$Value = "1"

New-Item -Path $Path -Name $Key
New-ItemProperty -Path $FullPath -Name $Name -Value $Value  -PropertyType $Type
