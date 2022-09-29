New-ItemProperty -LiteralPath "HKLM:\SSYSTEM\CurrentControlSet\Control\TimeZoneInformation" -Name "TimeZoneKeyName" -Value "W. Europe Standard Time" -PropertyType STRING -Force -ea SilentlyContinue;
