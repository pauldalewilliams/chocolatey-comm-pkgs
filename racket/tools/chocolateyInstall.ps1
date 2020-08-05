$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.8/installers/racket-7.8-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.8/installers/racket-7.8-i386-win32.exe'
	checksum = 'e18b014a0a0fce244ac1d09774f0db80aaccbfcf'
	checksum64 = '1214ff3473df8a751b5300832b61a1cecabc8bcb'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
