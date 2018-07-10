$ErrorActionPreference = 'Stop'

$toolsPath = Split-Path -parent $MyInvocation.MyCommand.Definition

$packageArgs = @{
  packageName = $env:ChocolateyPackageName
  file        = "$toolsPath\archives\windows-kill_Win32_1.1.1_lib_release.zip"
  file64      = "$toolsPath\archives\windows-kill_x64_1.1.1_lib_release.zip"
  destination = $toolsPath
}

Get-ChocolateyUnzip @packageArgs

Remove-Item $toolsPath\archives\*.zip -ea 0
Remove-Item $toolsPath\archives -ea 0