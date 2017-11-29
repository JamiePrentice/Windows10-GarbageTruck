get-appxpackage -allusers *3d* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *3dbuilder* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *alarms* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *appconnector* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *appinstaller* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *bingfinance* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *bingnews* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *bingsports* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *bingweather* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *calculator* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *camera* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *communicationsapps* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *connectivitystore* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *feedback* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *gethelp* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *getstarted* | remove-appxpackage | Out-Null
# get-appxpackage -allusers  *holographic* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *maps* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *messaging* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *mspaint* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *officehub* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *oneconnect* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *onenote* | remove-appxpackage | Out-Null
# get-appxpackage -allusers  *people* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *phone* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *phone* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *skypeapp* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *solitaire* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *soundrecorder* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *sway* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *wallet* | remove-appxpackage | Out-Null
# get-appxpackage -allusers  *xbox* | remove-appxpackage | Out-Null
get-appxpackage -allusers  *zune* | remove-appxpackage | Out-Null

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
