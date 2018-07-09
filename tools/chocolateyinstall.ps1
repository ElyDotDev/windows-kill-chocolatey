$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  file        = "$toolsPath\archives\windows-kill_1.1.0_release_x86.zip"
  file64      = "$toolsPath\archives\windows-kill_1.1.0_release_x64.zip"
  destination = $toolsPath
}

Get-ChocolateyUnzip @packageArgs

Remove-Item $toolsPath\archives\*.zip -ea 0
Remove-Item $toolsPath\archives -ea 0