$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.7/installers/racket-7.7-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.7/installers/racket-7.7-x86_64-win32.exe'
	checksum = '80a2588de5c00ab33dc2add4c2a724f2cfa0d883'
	checksum64 = 'f4d634a242ca35458b5de10c2c3832a69f7fb009'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
