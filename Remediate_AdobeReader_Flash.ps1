New-ItemProperty -LiteralPath "HKLM:\SOFTWARE\Policies\Adobe\Acrobat Reader\DC\FeatureLockDown" -Name "bEnableFlash" -Value 0 -PropertyType DWord -Force -ea SilentlyContinue;
