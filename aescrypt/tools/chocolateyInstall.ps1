$packageName = 'aescrypt'
$scriptPath = $(Split-Path -Parent $MyInvocation.MyCommand.Definition)
$fileType = 'msi'
$silentArgs = '/quiet'
$url = Join-Path $scriptPath 'AESCrypt32.msi'
$url64 = Join-Path $scriptPath 'AESCrypt64.msi'

Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64