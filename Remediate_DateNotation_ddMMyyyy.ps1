﻿New-ItemProperty -LiteralPath "HKCU:\Control Panel\International" -Name "sShortDate" -Value "dd/MM/yyyy" -PropertyType String -Force -ea SilentlyContinue;