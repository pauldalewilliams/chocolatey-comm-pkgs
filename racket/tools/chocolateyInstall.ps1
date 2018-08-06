$toolsDir   = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$packageArgs = @{
	packageName = 'racket'
	fileType = 'exe'
	url = 'https://download.racket-lang.org/releases/7.0/installers/racket-7.0-i386-win32.exe'
	url64bit = 'https://download.racket-lang.org/releases/7.0/installers/racket-7.0-x86_64-win32.exe'
	checksum = '1126e06d487e3c628dbf58497c35e752802d8c4d'
	checksum64 = '308cd30c6f06021405e753bec78d664a541d8395'
	checksumType = 'sha1'
	checksumType64 = 'sha1'
	silentArgs = '/S'
	validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
