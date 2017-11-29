# Remove all Appx Packages except Store, Calculator and Photos
Get-AppxPackage -allusers | where-object {$_.name –notlike "*store*"} | where-object {$_.name –notlike "*photos*"} | where-object {$_.name –notlike "*calculator*"} | Remove-AppxPackage -erroraction 'silentlycontinue'

# Disable Cortana
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortana" -Value "0" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "AllowCortanaAboveLock" -Value "0" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "AllowSearchToUseLocation" -Value "0" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "ConnectedSearchUseWeb" -Value "0" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "ConnectedSearchUseWebOverMeteredConnections" -Value "0" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\Windows Search" -Name "DisableWebSearch" -Value "1" ` -PropertyType DWORD -Force | Out-Null

# Disable OneDrive
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSync" -Value "1" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableFileSyncNGSC" -Value "1" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableLibrariesDefaultSaveToOneDrive" -Value "1" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\OneDrive" -Name "DisableLocation" -Value "1" ` -PropertyType DWORD -Force | Out-Null

# Disable GameDVR and GameUX
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\GameDVR" -Name "AllowGameDVR" -Value "0" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\GameUX" -Name "DownloadGameInfo" -Value "0" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\GameUX" -Name "GameUpdateOptions" -Value "0" ` -PropertyType DWORD -Force | Out-Null
New-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\GameUX" -Name "ListRecentlyPlayed" -Value "0" ` -PropertyType DWORD -Force | Out-Null
