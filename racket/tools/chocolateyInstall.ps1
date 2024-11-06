$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/8.15/installers/racket-8.15-i386-win32-bc.exe'
	url64bit = 'https://download.racket-lang.org/releases/8.15/installers/racket-8.15-x86_64-win32-cs.exe'
	checksum = 'c57f32822a5e308962101cfdee0a2ccff49150cb625a968c64d1530e5f124719'
	checksum64 = 'c267bc77ee95ef4d36ac279c90309e7f3de590b5f4d61194a0339f7edd01af46'
	checksumType = 'sha256'
	checksumType64 = 'sha256'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
