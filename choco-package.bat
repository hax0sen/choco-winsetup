@echo off
echo This will install chocolatey and other useful tools
echo Browse https://chocolatey.org/packages for packages
echo Ensure that your cmd.exe runs as Administrator
echo .
pause
echo .
powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin
choco feature enable -n=allowGlobalConfirmation
pause
echo chocolatey is ready
pause
choco install git.install -y --params "/GitAndUnixToolsOnPath /NoAutoCrlf /WindowsTerminal"
call refreshenv

# Web
// ------
choco install firefox flashplayerplugin
choco pin add -n=firefox
choco install googlechrome
choco pin add -n=googlechrome
#plugins
choco install lastpass-chrome


# code & hacking 
// ------
choco install vscode
choco pin add -n vscode
choco install wireshark
choco install putty.install
choco install winscp.install
choco install rufus
choco install virtualbox
choco install vagrant
choco install cmder
choco install hub
choco install github-desktop
choco install ccleaner


# games
// ------
choco install steam 
choco install origin
choco install discord
choco install teamspeak
choco install vibrancegui

# other tools
// ------ 
choco install spotify
choco install 7zip
choco install vlc
choco install keepass
choco install lastpass

## Windows 10 Config
// ------
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux

goto END
:END
pause
