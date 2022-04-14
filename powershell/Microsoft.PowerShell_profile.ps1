# Docker Completion config
Import-Module -Name DockerCompletion
Set-PSReadLineKeyHandler -Chord Tab -Function MenuComplete

# Windows Termninal Theme
Set-PoshPrompt -Theme Space
Import-Module -Name Terminal-Icons

# Fraedom Dev Environment
# Ensure that PowerShell doesn't keep a history of all commands entered.
# The log file is usually in C:\Users\<you>\AppData\Roaming\Microsoft\Windows\PowerShell\PSReadline
if (Get-Module PSReadLine) {
    Set-PSReadLineOption -HistorySaveStyle SaveNothing
    (Get-PSReadLineOption).HistorySavePath | Remove-Item -ErrorAction SilentlyContinue | Out-Null
}
 
# svinit function, to be used to initialize Spendvision "Build" environment. 
# This will give you access to commands that will help you build Spendvision, upgrade your database and much more.
# Hey ! you don't even have to call that function 'svinit'. Call it whatever you want !
function svinit {
  if( Test-Path .\Build\ ) {
        .\Build\init-powershell.ps1
  } else {
    Write-Warning "Cannot find .\Build\ directory in current location. Not a valid Spendvision root checkout"
  }
}
  
# You could set environment variables here:
$env:SqlServer = '(local)' # Use the local SQL Server installation during builds
# $env:SpendvisionBuildUseSvnExe = "True" # (get more info about $env:SpendvisionBuildUseSvnExe using 'help Get-LatestSource')
 
 
 
# You could set the working directory you want PowerShell to start in. Feel free to change it !
#Set-Location C:\ReleaseRoot
# "Bonjour $env:USERNAME. Do not forget, you can type 'notepad `$profile' to customize your PowerShell profile."