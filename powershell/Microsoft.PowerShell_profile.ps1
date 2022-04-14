# Prerequisites
# Install-Module -Name Terminal-Icons
# Install-Module -Name PSReadLine -AllowClobber -Force

# Prettify the Commandline
Import-Module -Name Terminal-Icons
oh-my-posh.exe init pwsh --config $env:POSH_THEMES_PATH\rudolfs-dark.omp.json | Invoke-Expression

# Configure PowerShell history
Import-Module PSReadLine -Version 2.2.2
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows
