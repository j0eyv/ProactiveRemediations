New-ItemProperty -LiteralPath "HKLM:\SOFTWARE\Policies\Adobe\Adobe Acrobat\DC\FeatureLockDown" -Name "bDisableJavaScript" -Value 1 -PropertyType DWord -Force -ea SilentlyContinue;
